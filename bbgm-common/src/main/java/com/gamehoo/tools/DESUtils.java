package com.gamehoo.tools;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import java.security.Key;
import java.security.SecureRandom;

public class DESUtils {

    private final static String DEFAULT_KEY = "P166L1JJO5KE3M32KGBGJIC74OFO5HB9";

    public static String getEncString(String strKey, String plain) {
        Key key = getKey(strKey);
        String cipher = null;
        if (key != null) {
            try {
                cipher = BASE64Encoder.encode(getEncCode(key, plain.getBytes("UTF-8")));
            } catch (Exception e) {

            }
        }
        return cipher;
    }

    public static String getEncString(String plain) {
        return getEncString(DEFAULT_KEY, plain);
    }

    public static String getDesString(String strKey, String cipher) {
        Key key = getKey(strKey);
        String plain = null;
        if (key != null) {
            try {
                plain = new String(getDesCode(key, BASE64Encoder.decodeBuffer(cipher)), "UTF-8");
            } catch (Exception e) {

            }
        }
        return plain;
    }

    public static String getDesString(String cipher) {
        return getDesString(DEFAULT_KEY, cipher);
    }

    private static Key getKey(String strKey) {
        Key key = null;
        KeyGenerator _generator;
        try {
            _generator = KeyGenerator.getInstance("DES");
            SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
            secureRandom.setSeed(strKey.getBytes());
            _generator.init(secureRandom);
            key = _generator.generateKey();
        } catch (Exception e) {

        }finally {
            _generator = null;
        }
        return key;
    }

    private static byte[] getEncCode(Key key, byte[] byteS) throws Exception {
        byte[] byteFina = null;
        Cipher cipher;
        try {
            cipher = Cipher.getInstance("DES");
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byteFina = cipher.doFinal(byteS);
        } finally {
            cipher = null;
        }
        return byteFina;
    }

    private static byte[] getDesCode(Key key, byte[] byteD) throws Exception {
        Cipher cipher;
        byte[] byteFina = null;
        try {
            cipher = Cipher.getInstance("DES");
            cipher.init(Cipher.DECRYPT_MODE, key);
            byteFina = cipher.doFinal(byteD);
        } finally {
            cipher = null;
        }
        return byteFina;
    }
}
