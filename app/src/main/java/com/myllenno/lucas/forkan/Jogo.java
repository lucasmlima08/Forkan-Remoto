package com.myllenno.lucas.forkan;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Random;

public class Jogo extends Activity {

    // ----------------------------------------------------------------------- //

    private String categoriaAtual = "";
    private String tabelaAtual = "";
    private String palavraChave = "";
    private char[] arrayPalavraChaveEscondida = {};
    private char[] arrayPalavraChave = {};

    private void sortearPalavra() throws Exception {
        String paginaHTML = "http://lucas-mlima.zz.mu/scriptsForkan/quantPalavras.php?tabela="+tabelaAtual;
        String leituraHTML = Funcoes.abrirConexaoFTP(paginaHTML);
        int limite = Integer.parseInt(leituraHTML);
        // Sorteia um valor aleatorio a partir do número de registros.
        Random aleatorio = new Random();
        int valorAleatorio = 1 + aleatorio.nextInt(limite);
        // Chama o método que fará a leitura pelo id.
        lerPalavraSorteada(valorAleatorio);
    }

    private void lerPalavraSorteada(int idAleatorio) throws Exception {
        String paginaHTML = "http://lucas-mlima.zz.mu/scriptsForkan/lerPalavraSorteada.php?"
                                +"tabela="+tabelaAtual+"&id="+idAleatorio;
        String leituraHTML = Funcoes.abrirConexaoFTP(paginaHTML);
        palavraEscolhida(leituraHTML);
    }

    private void palavraEscolhida(String palavra) throws Exception {
        palavraChave = palavra;
        arrayPalavraChave = palavra.toCharArray();
        arrayPalavraChaveEscondida = palavra.toCharArray();
        for (int i=0; i < arrayPalavraChaveEscondida.length; i++){
            if (arrayPalavraChaveEscondida[i] != ' ') {
                arrayPalavraChaveEscondida[i] = '_';
            }
        }
    }

    // ----------------------------------------------------------------------- //

    private void atualizarRecorde(){
        //
    }

    private void apagarRecorde(){
        //
    }

    // ----------------------------------------------------------------------- //

    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.jogo);

        chamarObjetos();
        herancaDeAtributos();

        try {
            sortearPalavra();
            if (palavraChave.equals("ErroDeConexão!")){
                Funcoes.mensagemDeInteracao("Problema na conexão do dispositivo.");
                super.finish();
            } else if (palavraChave.equals("ErroNoServidor!")){
                Funcoes.mensagemDeInteracao("Problema no servidor de conexão, aguarde um momento!");
                super.finish();
            }
        } catch (Exception e) {
            Funcoes.mensagemDeInteracao("Problema na conexão do dispositivo.");
            super.finish();
        }

        definirObjetos();
        threadRelogio();
    }

    private void herancaDeAtributos(){
        if(getIntent().hasExtra("informacoesExtras")){
            Bundle extras = getIntent().getExtras();
            categoriaAtual =  extras.getString("categoriaAtual");
            tabelaAtual =  extras.getString("tabelaAtual");
            acmPontuacao = extras.getInt("acmPontuacao");
        }
    }

    // ----------------------------------------------------------------------- //

    private TextView categoria;
    private TextView pontuacao;
    private TextView palavraDoJogo;
    private TextView tempoRestante;
    private TextView tempoTotal;
    private ImageView boneco;

    private void chamarObjetos(){
        palavraDoJogo = (TextView) findViewById(R.id.palavraDoJogo);
        categoria = (TextView) findViewById(R.id.categoria);
        pontuacao = (TextView) findViewById(R.id.pontuacao);
        tempoRestante = (TextView) findViewById(R.id.tempoRestante);
        tempoTotal = (TextView) findViewById(R.id.tempoTotal);
        boneco = (ImageView) findViewById(R.id.boneco);
    }

    private void definirObjetos(){
        categoria.setText(categoriaAtual.toUpperCase());
        pontuacao.setText("Pontuação: " + String.valueOf(acmPontuacao));
        tempoRestante.setText("Faltam: " + acmTempoRestante + "s");
        tempoTotal.setText("Tempo: " + acmTempoTotal_Min + "m" + acmTempoTotal_Seg);
        palavraDoJogo.setText(String.valueOf(arrayPalavraChaveEscondida));
        boneco.setImageResource(R.drawable.boneco0);
    }

    // ----------------------------------------------------------------------- //

    private void atualizarLayout_Palavra(){
        palavraDoJogo.setText(String.valueOf(arrayPalavraChaveEscondida));
    }

    private void atualizarLayout_Boneco(){
        int imagem = getResources().getIdentifier("boneco"+quantErros,"drawable", getPackageName());
        boneco.setImageResource(imagem);
    }

    // ----------------------------------------------------------------------- //

    private int quantErros = 0;

    private String checarCaracterEscolhido(char letra){
        // Compara o caracter na palavra inteira, os que não forem iguais compara a acentuação.
        String encontrou = "nao";
        for(int i=0; i<arrayPalavraChave.length; i++){
            if(arrayPalavraChave[i] == letra){
                if(arrayPalavraChaveEscondida[i] == letra) {
                    encontrou = "repetido";
                } else {
                    encontrou = "sim";
                    arrayPalavraChaveEscondida[i] = letra;
                }
            } else {
                if (procuraAcentuacao(letra, arrayPalavraChave[i])){
                    arrayPalavraChaveEscondida[i] = arrayPalavraChave[i];
                    encontrou = "sim";
                }
            }
        }
        return encontrou;
    }

    private boolean procuraAcentuacao(char letra, char letraPalavraDoJogo){
        // Arrays para a comparação das letras.
        char[] acentuacao   = {'Á','À','Â','Ã','Ä','É','È','Ê','Ë','Í','Ì','Î','Ï','Ó','Ò','Ô','Õ','Ö','Ú','Ù','Û','Ü','Ç'};
        char[] padrao       = {'A','A','A','A','A','E','E','E','E','I','I','I','I','O','O','O','O','O','U','U','U','U','C'};
        // Percorre o array de acentuação para comparar com a letra escolhida.
        for (int j=0; j<acentuacao.length; j++){
            if(letraPalavraDoJogo == acentuacao[j])
                if(letra == padrao[j])
                    return true;
                else
                    return false;
        }
        return false;
    }

    // ----------------------------------------------------------------------- //

    private int acmPontuacao = 0;
    DecimalFormat df = new DecimalFormat("00");

    private void condicaoDeTermino(){
        // Compara os dois arrays e retorna true ou false.
        boolean palavraConcluida = Arrays.equals(arrayPalavraChave, arrayPalavraChaveEscondida);
        if((palavraConcluida == true) || (quantErros >= 6)){
            // Define atributos que serão enviados.
            palavraChave = String.valueOf(arrayPalavraChave);
            tempoDeJogo = df.format(acmTempoTotal_Min)+"m"+df.format(acmTempoTotal_Seg);
            //- Condição de vitória (Palavra Completada).
            Intent intent;
            if(palavraConcluida){
                acmPontuacao++;
                intent = new Intent(this, Acertou.class);
            //- Condição de derrota (Boneco Completado).
            } else {
                intent = new Intent(this, Errou.class);
            }
            intent.putExtra("palavraChave", palavraChave);
            intent.putExtra("acmPontuacao", acmPontuacao);
            intent.putExtra("tempoDeJogo", tempoDeJogo);
            intent.putExtra("categoriaAtual", categoriaAtual);
            intent.putExtra("tabelaAtual", tabelaAtual);
            startActivity(intent);
            super.finish();
        }
    }

    // ----------------------------------------------------------------------- //

    private void pausarDespausar_musica(){
        if (acmTempoRestante <= 5){
            Audios.pausarMusicaDeFundo();
        } else {
            Audios.despausarMusicaDeFundo();
        }
    }

    // ----------------------------------------------------------------------- //

    private boolean threadEmExecucao = true;
    private int acmTempoRestante = 30;
    private int acmTempoTotal_Min = 0;
    private int acmTempoTotal_Seg = 0;
    private String tempoDeJogo = "";

    private void atualizarTempo(){
        if (acmTempoTotal_Seg >= 60){
            acmTempoTotal_Min++;
            acmTempoTotal_Seg = 0;
        }
    }

    private void condicaoDeParada_Relogio(){
        if (acmTempoRestante == 0){
            tempoDeJogo = df.format(acmTempoTotal_Min)+"m"+df.format(acmTempoTotal_Seg);
            Intent intent = new Intent(this, Errou.class);
            intent.putExtra("palavraChave", palavraChave);
            intent.putExtra("acmPontuacao", acmPontuacao);
            intent.putExtra("tempoDeJogo", tempoDeJogo);
            intent.putExtra("categoriaAtual", categoriaAtual);
            intent.putExtra("tabelaAtual", tabelaAtual);
            startActivity(intent);
            super.finish();
        }
    }

    private Thread thread;

    private void threadRelogio(){
        threadEmExecucao = true;
        thread = new Thread(new Runnable(){
            public void run(){
                try {
                    while (threadEmExecucao = true){
                        Thread.sleep(1000);
                        acmTempoRestante--;
                        acmTempoTotal_Seg++;

                        tempoRestante.post(new Runnable(){
                            public void run(){
                                tempoRestante.setText("Faltam: " + acmTempoRestante + "s");
                            }
                        });
                        tempoTotal.post(new Runnable(){
                            public void run(){
                                atualizarTempo();
                                tempoTotal.setText("Tempo: "+df.format(acmTempoTotal_Min)+"m"+df.format(acmTempoTotal_Seg));
                            }
                        });
                        if (acmTempoRestante == 5){
                            pausarDespausar_musica();
                            Audios.tocarEfeito("relogio");
                        }
                        condicaoDeParada_Relogio();
                    }
                } catch (Exception e){}
            }
        });
        thread.start();
    }

    // ----------------------------------------------------------------------- //

    public void eventoLetras(View view){
        Button aux = (Button) view;
        // Recebe a letra do botão.
        char caracter = aux.getText().toString().charAt(0);
        // Analisa se a letra está contida na palavra do jogo.
        if ((caracter != ' ') && (quantErros < 6)){
            String procura = checarCaracterEscolhido(caracter);
            if (procura.equals("sim") || procura.equals("repetido")){
                Audios.tocarEfeito("letra_certa");
                if (procura.equals("sim")){
                    view.setBackgroundColor(0xff25eb15);
                    atualizarLayout_Palavra();
                    acmTempoRestante = 31;
                }
            } else {
                Audios.tocarEfeito("letra_errada");
                view.setBackgroundColor(0xfff50200);
                quantErros++;
                atualizarLayout_Boneco();
                acmTempoRestante = 31;
            }
            pausarDespausar_musica();
            condicaoDeTermino();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        threadEmExecucao = false;
        thread.interrupt();
    }
}
