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
                    String consult = "select *from reportes";
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

    
    
    
    public static int BorrarReportes(int id){
            
            int estatus = 0;
            
            try{
                
                Connection con = Conexion.getConnection();
                String dlt = "DELETE FROM `notificaciones`.`reportes` WHERE  `Id`=?;";
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
}
