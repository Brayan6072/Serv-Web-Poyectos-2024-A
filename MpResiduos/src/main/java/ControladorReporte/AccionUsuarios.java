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
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.security.crypto.bcrypt.BCrypt;

public class AccionUsuarios {
    private static final Logger LOGGER = Logger.getLogger(AccionUsuarios.class.getName());

    public static int IngresarUsuario(Usuarios us) {
        int estatus = 0;
        String query = "INSERT INTO `notificaciones`.`usuarios` (`Nombre`, `Email`, `Telefono`, `Password`, `TpUser`, `Estado`) " +
            "SELECT ?, ?, ?, ?, ?, ? WHERE NOT EXISTS (" +
            "SELECT 1 FROM `notificaciones`.`usuarios` " +
            "WHERE `Email` = ? AND `TpUser` = ? AND `Estado` = ?);";

        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, us.getNombre());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getTelefono());
            ps.setString(4, us.getPassword());
            ps.setString(5, us.getTpuser());
            ps.setString(6, us.getEstado());
            ps.setString(7, us.getEmail());
            ps.setString(8, us.getTpuser());
            ps.setString(9, us.getEstado());

            estatus = ps.executeUpdate();
            LOGGER.log(Level.INFO, "Se ha insertado correctamente el usuario");
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error al insertar el usuario", e);
        }
        return estatus;
    }

    public static List<Usuarios> ConsultarUsuarios() {
        List<Usuarios> lista = new ArrayList<>();
        String query = "SELECT * FROM usuarios WHERE Estado = 'Activo';";

        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Usuarios us = new Usuarios();
                us.setId(rs.getInt(1));
                us.setNombre(rs.getString(2));
                us.setEmail(rs.getString(3));
                us.setTelefono(rs.getString(4));
                us.setPassword(rs.getString(5));
                us.setTpuser(rs.getString(6));
                us.setEstado(rs.getString(7));
                lista.add(us);
            }
            LOGGER.log(Level.INFO, "Consulta de usuarios completada");
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error al consultar usuarios", e);
        }
        return lista;
    }

    public static int BorrarUsuarios(int id) {
        int estatus = 0;
        String query = "UPDATE `notificaciones`.`usuarios` SET `Estado`='Inactivo' WHERE `Id`=?;";

        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setInt(1, id);
            estatus = ps.executeUpdate();
            LOGGER.log(Level.INFO, "Usuario borrado correctamente");
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error al borrar usuario", e);
        }
        return estatus;
    }

    public static int ActualizarUsuario(Usuarios us) {
        int estatus = 0;
        String query = "UPDATE `notificaciones`.`usuarios` SET `Nombre`=?, `Email`=?, `Telefono`=?, `Password`=?, `TpUser`=?, `Estado`=? WHERE `Id`=?;";

        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, us.getNombre());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getTelefono());
            ps.setString(4, us.getPassword());
            ps.setString(5, us.getTpuser());
            ps.setString(6, us.getEstado());
            ps.setInt(7, us.getId());

            estatus = ps.executeUpdate();
            LOGGER.log(Level.INFO, "Usuario actualizado correctamente");
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error al actualizar usuario", e);
        }
        return estatus;
    }

    public static Usuarios BuscarUsuario(int id) {
        Usuarios us = new Usuarios();
        String query = "SELECT * FROM `notificaciones`.`usuarios` WHERE Id = ?;";

        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    us.setNombre(rs.getString(2));
                    us.setEmail(rs.getString(3));
                    us.setTelefono(rs.getString(4));
                    us.setPassword(rs.getString(5));
                    us.setTpuser(rs.getString(6));
                }
                LOGGER.log(Level.INFO, "Usuario encontrado");
            }
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error al buscar usuario", e);
        }
        return us;
    }

    public static int ValidarUsuario(String correo, String psw) {
        int r = 0;
        String query = "SELECT PASSWORD FROM `notificaciones`.`usuarios` WHERE Email = ?;";

        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, correo);
            ResultSet rst = ps.executeQuery();

            if (rst.next()) {
                String storedHash = rst.getString("PASSWORD");
                if (BCrypt.checkpw(psw, storedHash)) {
                    r = 1;  // La contraseña coincide
                    LOGGER.log(Level.INFO, "Validación de usuario completada: {0}", r);
                }
            }
            rst.close();
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error al validar usuario", e);
        }
        return r;
    }
}
