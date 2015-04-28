package com.bank.project;




import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Hashtable;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author kites-javaa
 */
public class Server implements Runnable {

    ServerSocket ssoc = null;
    ArrayList<Socket> clsoc = new ArrayList<Socket>();
    ArrayList<Socket> ansoc=new ArrayList<Socket>();
    Hashtable<String, Socket> ht=new Hashtable<String, Socket>();
int jobid=0;
    public Server() {
        try {

            ssoc = new ServerSocket(9999);
            System.out.println("server Started");
            new Thread(this).start();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    public void run() {
        while (true) {
            try {

                Socket soc = ssoc.accept();
                new Child(soc).start();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        }
    }

    class Child extends Thread {

        Socket soc = null;

        private Child(Socket so) {

            soc = so;
        }

        public void run() {
            try {

                InputStream im = soc.getInputStream();
                OutputStream out = soc.getOutputStream();
                DataInputStream din = new DataInputStream(im);
                PrintStream ps = new PrintStream(out);
                String reqfrom = din.readLine();
                if (reqfrom.equals("client")) {
                    clsoc.add(soc);
                    System.out.println("ffff"+soc);
                }
                while (true) {
                    String s = din.readLine();

                    System.out.println("1st string" + s);
                   if(s==null)
                   {
                       break;
                   }
                    if(s.equals("exit"))
                    {
                        break;
                        
                    }
                    if(s.equals("login"))
                    {
                        String i=din.readLine();
                        System.out.println(i);
                        String uname=din.readLine();
                        System.out.println(uname);
                        sendtoAndClient(clsoc.get(clsoc.size()-1),i,uname);
                        System.out.println("jjjjjjjjj");
                    }
                }
            } catch (Exception e) {
            }

        }

        private void sendtoAndClient(Socket soc, String i, String uname) throws IOException {
            System.out.println("gggg"+soc);
          OutputStream out=soc.getOutputStream();
          PrintStream ps=new PrintStream(out);
          ps.println("login");
          ps.println(i);
          ps.println(uname);
        }

      



   
    }

    public static void main(String[] args) {
        new Server();
    }
}
