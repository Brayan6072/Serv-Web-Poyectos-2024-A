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
          private String estado;
          private String etiquetau;
          private String clasificacion;
          
   public Reporte (){}    

    public Reporte(int id, String fecha, String hora, String estado, String etiquetau, String clasificacion) {
        this.id = id;
        this.fecha = fecha;
        this.hora = hora;
        this.estado = estado;
        this.etiquetau = etiquetau;
        this.clasificacion = clasificacion;
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

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getEtiquetau() {
        return etiquetau;
    }

    public void setEtiquetau(String etiquetau) {
        this.etiquetau = etiquetau;
    }

    public String getClasificacion() {
        return clasificacion;
    }

    public void setClasificacion(String clasificacion) {
        this.clasificacion = clasificacion;
    }

 

    
   
}
