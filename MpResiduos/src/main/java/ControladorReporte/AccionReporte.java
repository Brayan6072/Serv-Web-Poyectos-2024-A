/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ControladorReporte;

import ModeloReporte.Reporte;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class AccionReporte {
    public static int IngresarReporte(Reporte rp){
            
            int estatus = 0;
            
            try{
                
                Connection con = Conexion.getConnection();
                String ins = "INSERT INTO `notificaciones`.`reportes` (`Fecha`, `EtiquetaU`, `Hora`, `EstdBote`, `Clasificacion`, `Estatus`) " +
                     "SELECT ?, ?, ?, ?, ?, ? WHERE NOT EXISTS (" +
                     "SELECT 1 FROM `notificaciones`.`reportes` " +
                     "WHERE `EtiquetaU` = ? AND `EstdBote` = ? AND `Clasificacion` = ? AND `Estatus` = ?);";

                PreparedStatement ps = con.prepareStatement(ins);

                ps.setString(1, rp.getFecha());
                ps.setString(2, rp.getEtiquetau());
                ps.setString(3, rp.getHora());
                ps.setString(4, rp.getEstado());
                ps.setString(5, rp.getClasificacion());
                ps.setString(6, rp.getEstatus());
                // Subconsulta para validar
                ps.setString(7, rp.getEtiquetau());
                ps.setString(8, rp.getEstado());
                ps.setString(9, rp.getClasificacion());
                ps.setString(10, rp.getEstatus());

                
                estatus = ps.executeUpdate();
                System.out.println("Se ha insertado correctamente");
                con.close();
                
            }catch(Exception ed){
                System.out.println("Error al Insertar");
                System.out.println(ed.getMessage());
            }
            return estatus;
        }       
    
    
    public static List<Reporte>VerReporte(){
                List<Reporte> lista = new ArrayList <Reporte>();                
                 
                try{

                    Connection con = Conexion.getConnection();
                    String consult = "SELECT * FROM `notificaciones`.`reportes` where Estatus = 'rojo' or Estatus = 'naranja';";
                    PreparedStatement ps = con.prepareStatement(consult);                   

                    ResultSet  rs= ps.executeQuery();
                    
                    while(rs.next()){
                        Reporte rpt = new Reporte();
                        rpt.setId(rs.getInt(1));
                        rpt.setFecha(rs.getString(2));
                        rpt.setEtiquetau(rs.getString(3));
                        rpt.setHora(rs.getString(4));
                        rpt.setEstado(rs.getString(5));
                        rpt.setClasificacion(rs.getString(6));
                        rpt.setEstatus(rs.getString(7));
                        lista.add(rpt);
                    }
                    
                    System.out.println("Estos son todos los reportes");
                    con.close();
                    
                }catch(Exception ed){
                    System.out.println("Error al Consultar");
                    System.out.println(ed.getMessage());
                }
               return   lista;         
        }

    
    
    
    public static int ActualizarReporte(int id, String est){
            
            int estatus = 0;
            
            try{
                
                Connection con = Conexion.getConnection();
                String dlt = "UPDATE `notificaciones`.`reportes` SET `Estatus`=? WHERE  `Id`=?;";
                PreparedStatement ps = con.prepareStatement(dlt);
                
                ps.setString(1, est);
                ps.setInt(2, id);
                
                
                estatus = ps.executeUpdate();
                System.out.println("Se ha actualizado su estatus correctamente");
                con.close();
                
            }catch(Exception ed){
                System.out.println("Error al Insertar");
                System.out.println(ed.getMessage());
            }
            return estatus;
        }    
    
        public static List<Reporte>HistorialReporte(){
                List<Reporte> lista = new ArrayList <Reporte>();                
                 
                try{

                    Connection con = Conexion.getConnection();
                    String consult = "SELECT * FROM `notificaciones`.`reportes` where Estatus = 'verde'";
                    PreparedStatement ps = con.prepareStatement(consult);                   

                    ResultSet  rs= ps.executeQuery();
                    
                    while(rs.next()){
                        Reporte rpt = new Reporte();
                        rpt.setId(rs.getInt(1));
                        rpt.setFecha(rs.getString(2));
                        rpt.setEtiquetau(rs.getString(3));
                        rpt.setHora(rs.getString(4));
                        rpt.setEstado(rs.getString(5));
                        rpt.setClasificacion(rs.getString(6));
                        rpt.setEstatus(rs.getString(7));
                        lista.add(rpt);
                    }
                    
                    System.out.println("Estos son todos los reportes");
                    con.close();
                    
                }catch(Exception ed){
                    System.out.println("Error al Consultar");
                    System.out.println(ed.getMessage());
                }
               return   lista;         
        }
}
