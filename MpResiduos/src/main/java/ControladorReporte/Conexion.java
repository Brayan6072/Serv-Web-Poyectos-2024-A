/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ControladorReporte;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
    public static Connection getConnection(){
        
         String url = "jdbc:mysql://localhost:3306/notificaciones";
         String usuario = "root";
         String contrasena = "root";   
         Connection con = null;
         
         try{
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection(url,usuario, contrasena);
             
            if(con != null){
                System.out.println("Se ha establecido la BD \n"+ url);
            }
             
         }catch(Exception e){
             System.out.println("No se conecto con la BD \n"+ url);
             System.out.println(e.getMessage());
         }
         return con;
    }

}
