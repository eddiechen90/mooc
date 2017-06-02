package com.mooc.test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;


public class Login {
	
	private static final String DEFAULT_ENCODING = "UTF-8";//编码  
	private static final int PROTECTED_LENGTH = 51200;// 输入流保护 50KB  
	
	public static void main(String arg[]) throws Exception {
		URL url=new URL("http://qq.com");
		
		System.out.println(url.openConnection().getPermission());
//		System.out.println(streamToString(url.openConnection().getInputStream()));

	}
	
	public static String streamToString(InputStream inputStream) throws Exception{
	    if (inputStream == null) {  
	        throw new Exception("输入流为null");  
	    }  
	    //字节数组  
	    byte[] bcache = new byte[2048];  
	    int readSize = 0;//每次读取的字节长度  
	    int totalSize = 0;//总字节长度  
	    ByteArrayOutputStream infoStream = new ByteArrayOutputStream();  
	    try {  
	        //一次性读取2048字节  
	        while ((readSize = inputStream.read(bcache)) > 0) {  
	            totalSize += readSize;  
	            if (totalSize > PROTECTED_LENGTH) {  
	                throw new Exception("输入流超出50K大小限制");  
	            }  
	            //将bcache中读取的input数据写入infoStream  
	            infoStream.write(bcache,0,readSize);  
	        }  
	    } catch (IOException e1) {  
	        throw new Exception("输入流读取异常");  
	    } finally {  
	        try {  
	            //输入流关闭  
	        	inputStream.close();  
	        } catch (IOException e) {  
	            throw new Exception("输入流关闭异常");  
	        }  
	    }  
	  
	    try {  
	        return infoStream.toString(DEFAULT_ENCODING);  
	    } catch (UnsupportedEncodingException e) {  
	        throw new Exception("输出异常");  
	    }  
	}
	
	public static void randomTest(int len) throws InterruptedException{
		Random random = new Random();
		while(true){
			System.out.println(random.nextInt(len));
			Thread.sleep(300);
		}
	}
	
	public static String getRoundString(int length){
		 String base = "abcdefghijklmnopqrstuvwxyz0123456789";   
		    Random random = new Random();   
		    StringBuilder sb = new StringBuilder();   
		    for (int i = 0; i < length; i++) {   
		        int number = random.nextInt(base.length());   
		        sb.append(base.charAt(number));   
		    }   
		    return sb.toString();   
	}
	
	public static void insertData() throws SQLException{
		String url="jdbc:mysql://localhost:3306/eddie";
		String username="root";
		String password="root";
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e){
			e.printStackTrace();
		}
		Connection conn=DriverManager.getConnection(url,username,password);
		String sql="insert into user (id,name) values (?,?)";
		PreparedStatement stat=conn.prepareStatement(sql);
		for(int i=1;i<1000;i++){
			System.out.println("准备插入第"+i+"条数据");
			stat.setInt(1, i);
			stat.setString(2, getRoundString(6));
			stat.executeUpdate();
			System.out.println("第"+i+"条数据已经插入");
		}
		if(stat!=null){
			stat.close();
		}
		if(conn!=null){
			conn.close();
		}
	}

}
