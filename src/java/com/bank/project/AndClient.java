package com.bank.project;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author kites-javaa
 */
public class AndClient extends Thread {

    Socket soc = null;
    static String s = "";

    public AndClient() {
        try {

            soc = new Socket("192.168.1.124", 9988);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void run() {

        try {
            System.out.println("AndClient started");

            InputStream im = soc.getInputStream();
            OutputStream out = soc.getOutputStream();

            DataInputStream din = new DataInputStream(im);
            PrintStream ps = new PrintStream(out);
            ps.println("client");
            while (true) {

                String msg = din.readLine();
                System.out.println(msg);
                if (msg == null) {
                    break;

                }

                if (msg.equals("login")) {
                    String s = din.readLine();

                    System.out.println("desss" + s);


                    System.exit(0);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    public static void main(String[] args) {
        new AndClient().start();
    }
}
