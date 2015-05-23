package com.myllenno.lucas.forkan;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.StrictMode;

public class Funcoes {

    public static Context context;

    @TargetApi(Build.VERSION_CODES.GINGERBREAD)
    public static void threadDeConexao(){
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
    }

    public static void mensagemDeInteracao(String erro){
        AlertDialog.Builder mensagem = new AlertDialog.Builder(context);
        mensagem.setTitle("Problema de Comunicação");
        mensagem.setMessage(erro);
        mensagem.setNeutralButton("OK", null);
        mensagem.show();
    }

    public static String abrirConexaoFTP(String pagina) throws Exception {
        threadDeConexao();
        String leituraHTML = ConexaoServidor.executaHttpGet(pagina);
        return leituraHTML;
    }

}
