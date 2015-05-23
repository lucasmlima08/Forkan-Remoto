package com.myllenno.lucas.forkan;

/* Author: Lucas M Lima.
 * Date: ?? de Janeiro de 2015. */

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class Main extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Audios.context = this;
        Funcoes.context = this;
        Audios.tocarMusicaDeFundo();
    }

    @Override
    protected void onDestroy(){
        super.onDestroy();
        Audios.pararMusicaDeFundo();
        Audios.tocarEfeito("efeito_final");
    }

    public void eventosMenuInicial(View view) {
        Audios.tocarEfeito("beep");
        Intent intent;
        if (view.getId() == R.id.novoJogo) {
            intent = new Intent(this, Categorias.class);
            intent.putExtra("informacoesExtras", false);
            intent.putExtra("telaAnterior", "Main");
            startActivity(intent);
        } else if (view.getId() == R.id.recordePessoal)
            Toast.makeText(this, "Indisponível no Momento!", Toast.LENGTH_SHORT).show();
        else if (view.getId() == R.id.rankingMundial)
            Toast.makeText(this, "Indisponível no Momento!", Toast.LENGTH_SHORT).show();
    }
}
