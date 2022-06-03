/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author s
 */
public class TestMail {

  public  String getRamdom(){
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        
        return String.format("%06d", number);
    }
 
  public static boolean sendEmail(User user) throws AddressException, MessagingException {
    Properties mailServerProperties;
    Session getMailSession;
    MimeMessage mailMessage;
    String toEmail = user.getEmail();
    
    boolean test = false;
 
      try {
          
          mailServerProperties = System.getProperties();
          mailServerProperties.put("mail.smtp.port", "587");
          mailServerProperties.put("mail.smtp.auth", "true");
          mailServerProperties.put("mail.smtp.starttls.enable", "true");

          // Step2: get Mail Session
          getMailSession = Session.getDefaultInstance(mailServerProperties, null);
          mailMessage = new MimeMessage(getMailSession);

          mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail)); //Thay abc bằng địa chỉ người nhận

          // Bạn có thể chọn CC, BCC
//    generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress("cc@gmail.com")); //Địa chỉ cc gmail
          mailMessage.setSubject("User Email Verification");
          mailMessage.setText("Registered successfully.Please verify your account using this code: " + user.getUser_Name());

          // Step3: Send mail
          Transport transport = getMailSession.getTransport("smtp");

          // Thay your_gmail thành gmail của bạn, thay your_password thành mật khẩu gmail của bạn
          transport.connect("smtp.gmail.com", "leemuld10@gmail.com", "levu050721");
          transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
          transport.close();
          test = true;
          
      } catch (Exception e) {
      }
    
      return test;
    
    
  }
 
}

