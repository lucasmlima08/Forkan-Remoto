package com.myllenno.lucas.forkan;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;

public class Categorias extends Activity implements View.OnClickListener {

    private String lerTabelas() throws Exception {
        String paginaHTML = "http://lucas-mlima.zz.mu/scriptsForkan/listarCategorias.php";
        String leituraHTML = Funcoes.abrirConexaoFTP(paginaHTML);
        return leituraHTML;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.categorias);
        String tabelasHTML = "";
        try {
            tabelasHTML = lerTabelas();
            if (tabelasHTML.equals("ErroDeConexão!")){
                Funcoes.mensagemDeInteracao("Problema na conexão do dispositivo.");
                this.finish();
            } else if (tabelasHTML.equals("ErroNoServidor!")){
                Funcoes.mensagemDeInteracao("Problema no servidor de conexão, aguarde um momento!");
                this.finish();
            }
        } catch (Exception e) {
            Funcoes.mensagemDeInteracao("Problema na conexão do dispositivo.");
            this.finish();
        }
        herancaDeAtributos();
        listarBotoes(tabelasHTML);
    }

    private boolean infoExtra = false;
    private String telaAnterior = "";
    private int pontuacao = 0;

    private void herancaDeAtributos(){
        Bundle extras = getIntent().getExtras();
        infoExtra =  extras.getBoolean("informacoesExtras");
        telaAnterior = extras.getString("telaAnterior");
        // Só entra aqui se vier da tela 'Acertou'.
        if ((infoExtra == true) && (telaAnterior.equals("Acertou")))
            pontuacao =  extras.getInt("acmPontuacao");
    }

    private void listarBotoes(String leituraHTML){
        LinearLayout layoutCategorias = (LinearLayout) findViewById(R.id.layoutMenuCategorias);
        // Chama o estilo definido para os botoes de categorias.
        ContextThemeWrapper estiloBotao = new ContextThemeWrapper(this, R.style.estiloBotaoCategorias);
        // Substitui o underline por um espaço vazio no nome de cada tabela.
        leituraHTML = leituraHTML.replace("_"," ");
        // Separa as categorias no array.
        String categorias[] = leituraHTML.split("\\#");
        Button botaoCategoria;
        for (int i=0; i<categorias.length; i++){
            botaoCategoria = new Button(estiloBotao);
            botaoCategoria.setBackground(getResources().getDrawable(R.drawable.tema_botoes_categorias));
            botaoCategoria.setText(categorias[i]);
            botaoCategoria.setOnClickListener(this);
            layoutCategorias.addView(botaoCategoria);
        }
    }

    private void categoriaEscolhida(String categoria){
        Intent jogo = new Intent(this, Jogo.class);
        jogo.putExtra("informacoesExtras", true);
        jogo.putExtra("categoriaAtual", categoria);
        jogo.putExtra("tabelaAtual", categoria.replace(" ","_"));
        jogo.putExtra("acmPontuacao", pontuacao);
        startActivity(jogo);
        super.finish();
    }

    @Override
    public void onClick(View view){
        Audios.tocarEfeito("beep");
        Button botao = (Button) view;
        String categoria = (String)botao.getText();
        categoriaEscolhida(categoria);
    }
}