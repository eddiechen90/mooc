package com.mooc.utils;

import java.util.Date;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender extends Thread{
	
	final static String myEmailAccount="892510140@qq.com";
	final static String myEmailPassword="1qaz2wsx";
	final static String myEmailSMTPHost="smtp.qq.com";
	final static String sendName="慕客网";
	final static String receiveName="用户";
	final static String subject="会员账号激活验证码";
	final static String smtpPort = "465";
	public String receiveMailAccount;
	public String content;
	
	@Override
	public void run() {
		sendEmail(receiveMailAccount,content);
	}
	
	public void sendEmail(String receiveMailAccount,String content){
		Properties props=new Properties();
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.smtp.host", myEmailSMTPHost);
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.port", smtpPort);
        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.socketFactory.port", smtpPort);
		Session session=Session.getDefaultInstance(props);
		MimeMessage message=createMimeMessage(session,myEmailAccount,receiveMailAccount,content);

		try {
			Transport transport=session.getTransport();
			transport.connect(myEmailAccount,myEmailPassword);
			transport.sendMessage(message,message.getAllRecipients());
			transport.close();
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}



	private static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail,String content) {
		MimeMessage message=new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(sendMail,sendName,"UTF-8"));
			message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail,receiveName,"UTF-8"));
			message.setSubject(subject,"UTF-8");
			message.setContent(content,"text/html;charset=UTF-8");
			message.setSentDate(new Date());
			message.saveChanges();
			return message;
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		return null;
	}
	
	

}
