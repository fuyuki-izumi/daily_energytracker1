package utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.xml.bind.DatatypeConverter;
//様々なコントローラで使えるDBUtilのようなユーティリティを使うことで↓
public class EncryptUtil {
    //メソッド名をひとつ記述すれば実行できる暗号化メソッドを用意できる
    public static String getPasswordEncrypt(String plain_p, String salt) {
        String ret = "";

        if(plain_p != null && !plain_p.equals("")) {
            byte[] bytes;
            //数で受け取った文字列にソルト文字列を連結させたものを SHA256 で暗号化。
            //引数の文字列が何もなければ、空の文字列を返す。
            String password = plain_p + salt;
            try {
                bytes = MessageDigest.getInstance("SHA-256").digest(password.getBytes());
                ret = DatatypeConverter.printHexBinary(bytes);
            } catch(NoSuchAlgorithmException ex) {}
        }

        return ret;
    }
}

