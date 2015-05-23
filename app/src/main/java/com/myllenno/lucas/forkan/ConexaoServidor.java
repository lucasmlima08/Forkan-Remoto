package com.myllenno.lucas.forkan;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;

public class ConexaoServidor {

    private static final int HTTP_TIMEOUT = 30 * 1000;
    private static HttpClient httpClient;

    private static HttpClient getHttpClient(){
        if (httpClient == null){
            httpClient = new DefaultHttpClient();
            final HttpParams httpParams = httpClient.getParams();
            HttpConnectionParams.setConnectionTimeout(httpParams, HTTP_TIMEOUT);
            HttpConnectionParams.setSoTimeout(httpParams, HTTP_TIMEOUT);
            ConnManagerParams.setTimeout(httpParams, HTTP_TIMEOUT);
        }
        return httpClient;
    }

    public static String executaHttpGet(String url) throws Exception {
        BufferedReader bufferedReader = null;
        try {
            HttpClient client = getHttpClient();
            HttpGet httpGet = new HttpGet();
            httpGet.setURI(new URI(url));
            HttpResponse httpResponse = client.execute(httpGet);
            bufferedReader = new BufferedReader(new InputStreamReader(httpResponse.getEntity().getContent(), "UTF-8"));
            StringBuffer stringBuffer = new StringBuffer("");

            String line = "";
            String LS = System.getProperty("line.separator");

            while ((line = bufferedReader.readLine()) != null){
                stringBuffer.append(line + LS);
            }
            bufferedReader.close();

            String resultado = stringBuffer.toString();

            // Remove o último caracter da string.
            resultado = resultado.substring (0, resultado.length() - 1);

            return resultado;
        } catch (RuntimeException error) {
            if (bufferedReader != null){
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                    return ""+e.getMessage();
                }
            }
            return "ErroNoServidor!";
        } catch (Exception error) {
            if (bufferedReader != null){
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                    return ""+e.getMessage();
                }
            }
            return "ErroDeConexão!";
        }
    }
}
