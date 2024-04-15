/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ControladorReporte;

import ModeloLogin.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class AccionUsuarios {
     public static int IngresarUsuario(Usuarios us){
            
            int estatus = 0;
            
            try{
                
                Connection con = Conexion.getConnection();
                String ins = "INSERT INTO `notificaciones`.`usuarios` (`Nombre`, `Email`, `Telefono`, `Password`, `TpUser`, Estado) VALUES (?,?,?,?,?,?);";
                PreparedStatement ps = con.prepareStatement(ins);
                
                
                ps.setString(1, us.getNombre());
                ps.setString(2, us.getEmail());
                ps.setInt(3, us.getTelefono());
                ps.setString(4, us.getPassword());
                ps.setString(5, us.getTpuser());                         
                ps.setString(6, us.getEstado());

                
                
                estatus = ps.executeUpdate();
                System.out.println("Se ha insertado correctamente");
                con.close();
                
            }catch(Exception ed){
                System.out.println("Error al Insertar");
                System.out.println(ed.getMessage());
            }
            return estatus;
        }
        
        public static List<Usuarios>ConsultarUsuarios(){
                List<Usuarios> lista = new ArrayList <Usuarios>();                
                 
                try{

                    Connection con = Conexion.getConnection();
                    String consult = "select *from usuarios where Estado = 'Activo';";
                    PreparedStatement ps = con.prepareStatement(consult);                   

                    ResultSet  rs= ps.executeQuery();
                    
                    while(rs.next()){
                        Usuarios us = new Usuarios();
                        us.setId(rs.getInt(1));
                        us.setNombre(rs.getString(2));
                        us.setEmail(rs.getString(3));
                        us.setTelefono(rs.getInt(4));
                        us.setPassword(rs.getString(5));
                        us.setTpuser(rs.getString(6));
                        us.setEstado(rs.getString(7));
                        lista.add(us);
                    }
                    
                    System.out.println("Estos son todos los alumnos");
                    con.close();
                    
                }catch(Exception ed){
                    System.out.println("Error al Consultar");
                    System.out.println(ed.getMessage());
                }
               return   lista;         
        }
        
        public static int BorrarUsuarios(int id){
            
            int estatus = 0;
            
            try{
                
                Connection con = Conexion.getConnection();
                String dlt = "UPDATE `notificaciones`.`usuarios` SET `Estado`='Inactivo' WHERE  `Id`=?;";
                PreparedStatement ps = con.prepareStatement(dlt);
                
                ps.setInt(1, id);
                
                estatus = ps.executeUpdate();
                System.out.println("Se ha borrado correctamente");
                con.close();
                
            }catch(Exception ed){
                System.out.println("Error al Insertar");
                System.out.println(ed.getMessage());
            }
            return estatus;
        }
        
        public static int ActualizarUsuario(Usuarios us){
            
            int estatus = 0;
            
            try{
                
                Connection con = Conexion.getConnection();
                String ins = "UPDATE `notificaciones`.`usuarios` SET `Nombre`=?, `Email`=?, `Telefono`=?, `Password`=?, `TpUser`=?, Estado=? WHERE  `Id`=?;";
                PreparedStatement ps = con.prepareStatement(ins);
                
                
                
                ps.setString(1, us.getNombre());
                ps.setString(2, us.getEmail());
                ps.setInt(3, us.getTelefono());
                ps.setString(4, us.getPassword());
                ps.setString(5, us.getTpuser());
                ps.setString(6, us.getEstado());
                ps.setInt(7, us.getId());
                estatus = ps.executeUpdate();
                System.out.println("Se ha actualizado correctamente");
                con.close();
                
            }catch(Exception ed){
                System.out.println("Error al Actualizar");
                System.out.println(ed.getMessage());
            }
            return estatus;
        }    
        
        public static Usuarios BuscarAlumno(int id){
            
            Usuarios us = new Usuarios(); 
            
            
            try{
                
                Connection con = Conexion.getConnection();
                String ins = "SELECT *FROM `notificaciones`.`usuarios` WHERE  Id = ?;";
                PreparedStatement ps = con.prepareStatement(ins);
                
                ps.setInt(1,id);                
                
                ResultSet rs = ps.executeQuery();                
               
                if(rs.next()){                    
                        
                        us.setNombre(rs.getString(2));
                        us.setEmail(rs.getString(3));
                        us.setTelefono(rs.getInt(4));
                        us.setPassword(rs.getString(5));
                        us.setTpuser(rs.getString(6));
                }
                System.out.println("Alumno encontrado");
                con.close();    
                
            }catch(Exception ed){
                System.out.println("Error al Buscar");
                System.out.println(ed.getMessage());
            }
            return us;
        }    
        
        
        public static int ValidarUsuario(String correo, String psw){
            
                       
            int r = 0;
            try{
                
                Connection con = Conexion.getConnection();
                String ins = "SELECT *FROM `notificaciones`.`usuarios` WHERE  Email = ? AND PASSWORD = ?;";
                PreparedStatement ps = con.prepareStatement(ins);
                
                ps.setString(1,correo); 
                ps.setString(2,psw);         
                     
                System.out.println(correo);   
               System.out.println(psw);   
               
                ResultSet rst = ps.executeQuery();         
               
                System.out.println(r);   
                 
                              
                if(rst.next()){
                    r = 1;
                }
                System.out.println(r);   
                
                con.close();    
                
            }catch(Exception ed ){
              
                System.out.println("Error al Buscar");
                System.out.println(ed.getMessage());
            }
            return r;
        }
}
