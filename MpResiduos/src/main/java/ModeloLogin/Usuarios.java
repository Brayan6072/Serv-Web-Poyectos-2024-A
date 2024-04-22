/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloLogin;

    
public class Usuarios {
    private int id;
    private String nombre;
    private String email;
    private String telefono;
    private String password;
    private String tpuser;    
    private String estado;
    
    public Usuarios(){
    
    }

    public Usuarios(int id, String nombre, String email, String telefono, String password, String tpuser, String estado) {
        this.id = id;
        this.nombre = nombre;
        this.email = email;
        this.telefono = telefono;
        this.password = password;
        this.tpuser = tpuser;
        this.estado = estado;
    }   


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    

    public String getTpuser() {
        return tpuser;
    }

    public void setTpuser(String tpuser) {
        this.tpuser = tpuser;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getEmail() {
        return email;
    }

        public void setEmail(String email) {
        if (email != null && email.matches("^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$")) {
            this.email = email;
        } else {
            throw new IllegalArgumentException("Email inválido");
        }
        
    }
    
     
}