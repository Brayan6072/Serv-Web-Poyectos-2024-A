/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloReporte;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
    
    public static void sendEmail(String recipient, String subject, String content) throws MessagingException {
        // Configuración de propiedades
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        // Credenciales de la cuenta de correo
        final String myAccountEmail = "brayandelgadodiaz03@gmail.com";
        final String password = "**** **** ****";

        // Crear una sesión con autenticación
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(myAccountEmail, password);
            }
        });

        // Crear el mensaje a enviar
        Message message = prepareMessage(session, myAccountEmail, recipient, subject, content);

        // Enviar el correo
        Transport.send(message);
        System.out.println("Mensaje enviado exitosamente");
    }

    private static Message prepareMessage(Session session, String myAccountEmail, String recipient, String subject, String content) {
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            message.setSubject(subject);
            message.setText(content);
            return message;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    

}
