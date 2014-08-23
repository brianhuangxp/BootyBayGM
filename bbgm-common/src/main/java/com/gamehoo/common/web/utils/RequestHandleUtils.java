package com.gamehoo.common.web.utils;

import com.gamehoo.tools.DESUtils;
import com.gamehoo.tools.log.Logger;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

public class RequestHandleUtils {
    private static final Logger log = new Logger(RequestHandleUtils.class);
    /**
     * 连接超时时间(120秒)
     */
    public static final int CONNECTION_TIMEOUT = 120 * 1000;

    /**
     * 读数据超时时间(120秒)
     */
    public static final int SO_TIMEOUT = 120 * 1000;

    /**
     * GET请求方法
     */
    public static final String HTTP_METHOD_GET = "GET";

    /**
     * POST请求方法
     */
    public static final String HTTP_METHOD_POST = "POST";

    public static String sendRequest(String url, String json) throws IOException {
        HttpURLConnection conn = null;
        ObjectInputStream oip = null;
        ObjectOutputStream oos = null;
        String info = DESUtils.getEncString(json);
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setConnectTimeout(CONNECTION_TIMEOUT);
            conn.setReadTimeout(SO_TIMEOUT);
            conn.setDoInput(true);
            conn.setDoOutput(true);
            conn.setRequestMethod(HTTP_METHOD_POST);
            conn.setRequestProperty("Content-type", "application/x-java-serialized-object");
            oos = new ObjectOutputStream(conn.getOutputStream());
            oos.writeObject(info);
            oos.flush();
            oip = new ObjectInputStream(conn.getInputStream());
            try {
                return (String)oip.readObject();
            } catch (ClassNotFoundException e) {
                log.error(e);
            }
            return null;
        } finally {
            if (null != oos) {
                oos.close();
            }
            if (null != oip) {
                oip.close();
            }
            if (null != conn) {
                conn.disconnect();
            }
        }
    }

}
