/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ControladorReporte;

import ModeloReporte.Reporte;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class AccionReporte {
    public static int IngresarReporte(Reporte rp){
            
            int estatus = 0;
            
            try{
                
                Connection con = Conexion.getConnection();
                String ins = "INSERT INTO `notificaciones`.`reportes` (`Fecha`, `EtiquetaU`, `Hora`, `Id_Bote`) VALUES  (?,?,?,?);";
                PreparedStatement ps = con.prepareStatement(ins);
                
                
                ps.setString(1, rp.getFecha());
                ps.setString(2, rp.getEtiquetaU());
                ps.setString(3, rp.getHora());
                ps.setInt(4, rp.getId_estado());
              
                
                estatus = ps.executeUpdate();
                System.out.println("Se ha insertado correctamente");
                con.close();
                
            }catch(Exception ed){
                System.out.println("Error al Insertar");
                System.out.println(ed.getMessage());
            }
            return estatus;
        }       
}
