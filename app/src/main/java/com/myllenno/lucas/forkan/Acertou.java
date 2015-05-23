package com.myllenno.lucas.forkan;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class Acertou extends Activity implements View.OnClickListener {

    private TextView pontuacao;
    private TextView palavra;
    private TextView tempo;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.acertou);

        palavra = (TextView) findViewById(R.id.palavraChaveAcertou);
        pontuacao = (TextView) findViewById(R.id.pontuacaoAcertou);
        tempo = (TextView) findViewById(R.id.tempoAcertou);

        Audios.tocarEfeito("acertou");
        herancaDeAtributos();
        definir();
    }

    private String categoriaAtual = "";
    private String tabelaAtual = "";
    private String palavraChave = "";
    private int acmPontuacao = 0;
    private String tempoDeJogo = "";

    private void herancaDeAtributos(){
        Bundle extras = getIntent().getExtras();
        categoriaAtual =  extras.getString("categoriaAtual");
        tabelaAtual = extras.getString("tabelaAtual");
        palavraChave =  extras.getString("palavraChave");
        acmPontuacao = extras.getInt("acmPontuacao");
        tempoDeJogo =  extras.getString("tempoDeJogo");
    }

    private void definir(){
        palavra.setText(palavraChave);
        pontuacao.setText("Pontuação: "+String.valueOf(acmPontuacao));
        tempo.setText("Tempo: "+tempoDeJogo);
    }

    @Override
    public void onClick(View view) {
        Audios.tocarEfeito("beep");
        Intent intent;
        if (view.getId() == R.id.novaPalavraAcertou){
            intent = new Intent(this, Jogo.class);
            intent.putExtra("informacoesExtras", true);
            intent.putExtra("telaAnterior", "Acertou");
            intent.putExtra("categoriaAtual", categoriaAtual);
            intent.putExtra("tabelaAtual", tabelaAtual);
            intent.putExtra("acmPontuacao", acmPontuacao);
            startActivity(intent);
        } else if (view.getId() == R.id.novaCategoriaAcertou){
            intent = new Intent(this, Categorias.class);
            intent.putExtra("informacoesExtras", true);
            intent.putExtra("telaAnterior", "Acertou");
            intent.putExtra("acmPontuacao", acmPontuacao);
            startActivity(intent);
        }
        super.finish();
    }
}
