/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloReporte;

/**
 *
 * @author ben10
 */
public class Reporte {
    private int id;
          private String fecha;
          private String hora;
          private int id_estado;
          private String EtiquetaU;
          
   public Reporte (){}    

    public Reporte(int id, String fecha, String hora, int id_estado, String EtiquetaU) {
        this.id = id;
        this.fecha = fecha;
        this.hora = hora;
        this.id_estado = id_estado;
        this.EtiquetaU = EtiquetaU;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public String getEtiquetaU() {
        return EtiquetaU;
    }

    public void setEtiquetaU(String EtiquetaU) {
        this.EtiquetaU = EtiquetaU;
    }
   
}
