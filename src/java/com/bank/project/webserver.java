package com.bank.project;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.Socket;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author kites-javaa
 */
public class webserver extends Thread {

    Socket soc = null;
    String mob = "5554";

    public webserver() {
        try {

            soc = new Socket(serverConfig.ip, 8888);

        } catch (Exception e) {
        }
    }

    public void run() {

        try {
            System.out.println("webserver started");

            InputStream im = soc.getInputStream();
            OutputStream out = soc.getOutputStream();

            DataInputStream din = new DataInputStream(im);
            PrintStream ps = new PrintStream(out);
            ps.println("bank");
            while (true) {

                String msg = din.readLine();
                System.out.println(msg);
                if (msg == null) {
                    break;

                }

                if (msg.equals("register")) {
                    String s = din.readLine();
                    System.out.println("string" + s);
                    insertToOpass(s);
                }
                if (msg.equals("recovery")) {
                    String s = din.readLine();
                    System.out.println("string" + s);
                    UpdateOpass(s);
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    public static void main(String[] args) {
        new webserver().start();
    }

    private void insertToOpass(String msg) throws IOException, SQLException {
        System.out.println("inth method" + msg);
        String ar[] = msg.split("/");
        String rand = System.currentTimeMillis() + "";
        System.out.println("rand = " + rand);
        String sq = "select * from opassreq where username='" + ar[0] + "'";
        ResultSet rs = new dbconnection().getData(sq);
        if (!rs.next()) {
            String mob = ar[1].substring(1, ar[1].length());
            String sql = "insert into opassreq(username,mobno,randomno)  values('" + ar[0] + "','" + mob + "','" + rand + "')";
            sendToMob(rand);
            new dbconnection().putData(sql);
        } else {
            sendToMob("exist");
        }
    }

    private void sendToMob(String rand) throws IOException {
        OutputStream out = soc.getOutputStream();
        PrintStream ps = new PrintStream(out);
        ps.println("registerreply");
        ps.println(rand);
        ps.println(mob);
    }

    private void UpdateOpass(String msg) throws IOException {
        System.out.println("inth method" + msg);
        String ar[] = msg.split("/");
        String rand = System.currentTimeMillis() + "";
        String mob = ar[1].substring(1, ar[1].length());
        String sql = "update opassreq set randomno='" + rand + "' where username='" + ar[0] + "' and mobno='" + mob + "'";
        new dbconnection().putData(sql);
        sendToMob1(rand);
    }

    private void sendToMob1(String rand) throws IOException {
        OutputStream out = soc.getOutputStream();
        PrintStream ps = new PrintStream(out);
        ps.println("recoveryreply");
        ps.println(rand);
        ps.println(mob);
    }
}
