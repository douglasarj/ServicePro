/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicepro.conexao;


import java.sql.Connection;
import java.awt.Component;
import java.sql.SQLException;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Douglas53983036
 */
public class Conexao {
    
      private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
      private static final String URL = "jdbc:mysql://localhost:3307/assistencia_tecnica";
      private static final String USER = "root";
      private static final String PASS = "senac";
   
   
    public static Connection conexaoBanco() throws SQLException {
       
       
        try {
             Class.forName(DRIVER);
             Component parentComponent = null;
                 
             
             
             return DriverManager.getConnection(URL,USER, PASS);
           
         } catch (ClassNotFoundException ex) {
            Component parentComponent = null;
           
      JOptionPane.showMessageDialog(null, "Erro com o Banco de dados!!!");
      throw new RuntimeException("Erro no banco de dados",ex);
       
         }
    }
}
