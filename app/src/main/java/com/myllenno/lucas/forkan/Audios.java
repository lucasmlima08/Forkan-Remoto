package com.myllenno.lucas.forkan;

import android.content.Context;
import android.media.MediaPlayer;

public class Audios {

    public static Context context;

    // ------------------------------------------------------------------------------------------ //

    public static MediaPlayer musica;

    public static void tocarMusicaDeFundo(){
        int audio = context.getResources().getIdentifier("musica_de_fundo", "raw", context.getPackageName());
        musica = MediaPlayer.create(context, audio);
        musica.setLooping(true);
        musica.start();
    }

    public static void pausarMusicaDeFundo(){
        if (musica.isPlaying())
            musica.pause();
    }

    public static void despausarMusicaDeFundo(){
        if (!musica.isPlaying())
            musica.start();
    }

    public static void reiniciarMusicaDeFundo(){
        musica.stop();
        musica.setLooping(true);
        musica.start();
    }

    public static void pararMusicaDeFundo(){
        if (musica.isPlaying()){
            musica.stop();
        }
    }

    // ------------------------------------------------------------------------------------------ //

    public static MediaPlayer efeito;

    public static void tocarEfeito(String toque){
        pararEfeito();
        int audio = getToque(toque, context);
        efeito = MediaPlayer.create(context, audio);
        efeito.setOnCompletionListener(new MediaPlayer.OnCompletionListener(){
            @Override
            public void onCompletion(MediaPlayer mp){
                pararEfeito();
                efeito.release();
                efeito = null;
            }
        });
        efeito.start();
    }

    // Retorna o RAW
    public static int getToque(String toque, Context context){
        int audio = context.getResources().getIdentifier(toque, "raw", context.getPackageName());
        return audio;
    }

    public static void pararEfeito(){
        if ((efeito != null) && (efeito.isPlaying()))
            efeito.stop();
    }
}
