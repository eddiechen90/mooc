package com.mooc.test;

import java.util.Calendar;
import java.util.Random;
import java.util.Scanner;

public class Demo01 {
	
	

	static Scanner sca=new Scanner(System.in);
	
	public static void main(String arg[]){
		
//		cal_tax();
//		dianXinTaoCan();
//		taxiPay();
//		swdemo();
//		swdemo01();
//		sum();
//		guessNumberGame();
//		test01();
//		multiTable();
		test02();
		
		
	}
	
	
//	public static void score(){
//		System.out.println("������ѧ��������");
//		String name=sca.next();
//		int totalScore=0;
////		for()
//	}
	
	
	
	/*
	 * 99�˷���
	 * 1*1=1
	 * 1*2=2 2*2=4
	 * ......
	 * 
	 * ѭ��9��  i=1  i<=9  i++
	 * 		   j=1  j<=i  j++
	 * 
	 */
	
	public static void multiTable(){
		for(int i=1;i<=9;i++){
			for(int j=1;j<=i;j++){
				System.out.print(j+"*"+i+"="+(i*j)+" ");
			}
			System.out.println();
		}
	}
	
	
	
	/**
	 * ������ټ�
	 * ����  3
	 * ĸ��  2
	 * ����С��  1
	 * 
	 */
	public static void test02(){
		
		int x;
		int y;
		int z;
	
		for(x=1;x<100/3;x++){
			for(y=1;y<100/2;y++){
				z=100-x-y;
				if((3*x+y*2+z/3==100)&&(z%3==0)){
					System.out.println("����"+x+"ĸ��"+y+"С��"+z);
				}
				
			}
		}
		
		/**
		 * �Ӽ�������һ������
		 * ���n��  *
		 *        *
		 *       ***
		 *      *****
		 * 
		 */
		System.out.println("����һ������");
		int n =sca.nextInt();
		for(int i=1;i<=n;i++){
			for(int j=0;j<(n-i+1);j++){
				System.out.print(" ");
			}
			for(int k=0;k<2*i-1;k++){
				System.out.print("*");
			}
			System.out.println();//����
		}
		
		
		
	}
	

	public static void test01(){
		int sum1=0;
		for(int i=1;i<100;i+=2){
			sum1+=i;
		}
		
		int sum2=0;
		
		for(int i=0;i<100;i+=2){
			sum2+=i;
		}
		
		int sum=0;
		for(int i=0;i<100;i+=1){
			sum+=i;
		}
		
		System.out.println(sum1);
		System.out.println(sum2);
		System.out.println(sum);
	}
	
	
	
	
	/*
	 * ��������Ϸ��
	 *  ͨ������һ�������
	 *  Ȼ��Ӽ�������һ������  ������������ȥ�Ƚ� 
	 *  �����Ƚϵ���ʾ���µĴ������ܳ���10��
	 */
	public static void guessNumberGame(){

		
		//1.����һ�������
		Random ran=new Random();
		int guessNumber=ran.nextInt(100);
		int n=0;
		do{
			
			//2.����һ������
			System.out.println("����"+(10-n)+"�λ��ᣬ��������������");
			int number=sca.nextInt();
			
			//3.ѭ���ĺ���������бȽ�  ������ʾ��Ϣ
			if(number>guessNumber){
				System.out.println("̫���ˣ���Сһ��");
			}else if(number<guessNumber){
				System.out.println("̫С�ˣ����һ��");
			}else{
				System.out.println("��ϲ�㣬�¶��ˣ�����");
				break;
			}
			
			n++;
			
			//4.ѭ����������  �������ܳ���10�Ρ�
		}while(n<10);
		
		if(n>10){
			System.out.println("���� �´��ٲ°ɣ�����");
		}

		
	}
	
//	ѭ��Demo
	public static void sum(){
		int sum=0;
		
		int n=1;
		
		while(n<100){
			sum+=n;
			n++;
		}
		
		System.out.println("sum="+sum);
		
		n=1;
		int sum1=0;
		while(n<100){
			sum1+=n;
			n+=2;
		}
		
		System.out.println("1-100������Ϊ"+sum1);
		
		
		/**
		 * ͨ����������Y/N
		 * ��ѭ��������ֹͣ
		 * 
		 * 
		 * 
		 */
		
		String cmd=sca.next();
		while(!cmd.equals("y")){
			System.out.println("�ϸ����𣿣�y/n��");
			System.out.println("�����Ķ��̳�");
			System.out.println("�����ϻ����");
			cmd=sca.next();
		}
		System.out.println("���ѧϰ����");
		
		
		/**
		 * �Ӽ�������һ������ ��������������У�
		 * eg:12345   �����54321
		 *  sum=0;
		 *  ��һ��ѭ����sum=0*10+12345%10=5   12345/10
		 *  �ڶ���ѭ����sum=5*10+1234%10==54  1234/10
		 *  ...
		 *  
		 *  					1/10=0---ѭ��Ӧ�ý�����
		 */
		
		System.out.println("�Ӽ�������һ������");
		int n2=sca.nextInt();
		int sum2=0; //���浹�����к�ֵ
		while(n2!=0){
			sum2=sum2*10+n2%10;
			n2/=10;
		}
		System.out.println(sum2);
		
		
//		ò����ѭ��
		
		int j=1;
		while(true){
			System.out.println(j);
			j++;
			if(j==100){
				break;
			}
		}
		
		
	}
	
	
	
	
//	switch Demo
	public static void swdemo01(){
		while(true){
			System.out.println("�������һ����������");
			int num1=sca.nextInt();
			System.out.println("������ڶ�����������");
			int num2=sca.nextInt();
			System.out.println("���������������---1���ӷ�   2������   3���˷�   4������");
			int choise=sca.nextInt();
			double result=0;
			switch(choise){
			case 1:
//				�ӷ�����
				result=num1+num2;
				break;
				
			case 2:
//				��������
				result=num1-num2;
				break;
				
			case 3:
//				�˷�����
				result=num1*num2;
				break;
				
			case 4:
//				��������
				result=num1*1.0/num2;
				break;
			default:System.out.println("��������·����");
			}
			
			System.out.println("������"+result);
		}
		
	}
	
//	switch Demo
	public static void swdemo(){
		while(true){
			System.out.println("������һ������[0-100]");
			int score=sca.nextInt();
			if(score<0){
				System.out.println("���������Ǹ�����");
				System.exit(0);
			}
			
			if(score>100){
				System.out.println("�������ܴ���100��");
				System.exit(0);
			}
			
			String level="";
			
			switch(score/10){
			case 10: 
			case 9: level="����";break;
			case 8: level="����";break;
			case 7: level="�е�";break;
			case 6: level="����";break;
			default:level="������";
			}
			
			System.out.println("���ĳɼ��ȼ���-"+level);
		}
	}
	
	public static void taxiPay(){
		System.out.println("�����������������");
		int km=sca.nextInt();  //�����
		System.out.println("������ȴ�ʱ�䣺");
		int waitTime=sca.nextInt();
		double basePay=13.0;
		double basePrice=2.3;
		double baseLiCheng=0.0; //������̷���
		double waitPay=0.0;//�ȴ�����
		double emptyPay=0.0;//�շ�����
		
		Calendar cal=Calendar.getInstance();  //��ȡһ��Calendar����
		int hour= cal.get(cal.HOUR_OF_DAY);  //��ȡ����Сʱ��
//		System.out.println(hour);
		
		if(hour>=5 && hour<=23){
			//����
			if(km>3){
				baseLiCheng=basePay+(km-3.0)*basePrice;
			}else{
				baseLiCheng=basePay;
			}
			
		}else{
			//����
			if(km>3){
				baseLiCheng=basePay+(km-3.0)*(basePrice+basePrice*0.2);
			}else{
				baseLiCheng=basePrice*1.2;
			}
		}
		
		waitPay=waitTime/5.0*2.0;  //�ȴ�����
		
		if(km>15){
			emptyPay=(km-15)*(basePay*0.5);
		}
		
		System.out.println("������̷��ã�"+baseLiCheng);
		System.out.println("�ȴ����ã�"+waitPay);
		System.out.println("��ʻ�ѣ�"+emptyPay);
		System.out.println("�ܷ���Ϊ��"+(baseLiCheng+waitPay+emptyPay)+"Ԫ");
		
	}
	
	public static void dianXinTaoCan(){
		
		System.out.println("������ͨ��ʱ��");
		int callTime=sca.nextInt();
		System.out.println("�������������");
		int message=sca.nextInt();
		System.out.println("��������������");
		int gprs=sca.nextInt();
		double basePay=58;
		
		if(callTime>200){
			basePay+=((callTime-200)*0.2);
		}
		if(message>100){
			basePay+=((message-100)*0.1);
		}
		if(gprs>500){
			basePay+=(gprs-500)*0.3;
		}
		
		System.out.println("�ײ��ܷ���Ϊ"+basePay+"Ԫ");
	}
	
	
	

	public static void cal_tax(){
		System.out.println("������˰ǰ����");
		double tax;
		int money=sca.nextInt();
		int moneyTax=money-3500;
		if(moneyTax<-1500){
			tax=moneyTax*0.03;
		}else if(moneyTax<=4500){
			tax=moneyTax*0.1;
		}else if(moneyTax<=9000){
			tax=moneyTax*0.2-555;
		}else if(moneyTax<=35000){
			tax=moneyTax*0.25-1005;
		}else if(moneyTax<=55000){
			tax=moneyTax*0.3-2755;
		}else if(moneyTax<=80000){
			tax=moneyTax*0.35-5505;
		}else{
			tax=moneyTax*0.45-13505;
		}
		
		System.out.println("˰ǰ����"+money);
		System.out.println("����˰��"+tax);

		System.out.println("˰����"+(money-tax));

		
	}
	
	public static void isYear(){
//		Scanner sca=new Scanner(System.in);
		System.out.println("��������ݣ�");
		int year=sca.nextInt();
		if((year%4==0) && (year%100!=0) ||(year%400==0)){
			System.out.println(year+"��һ������");
		}else{
			System.out.println(year+"����һ������");
		}
		
		System.out.println("----------------------------");
	}
	

	public static void ourPrice(){
		System.out.println("��������Ҫ��ı���");
//		Scanner sca=new Scanner(System.in);
		double pay;
		double price=6.0;
		
		int qty=sca.nextInt();
		
		if(qty<1){
			System.out.println("����������������������");
			System.exit(0);
		}else if(qty%2==0){
			pay=qty/2*price+qty/2*price/2;
			System.out.println("��Ҫ֧��"+pay+"Ԫ");
		}else{
			pay=(qty-1)/2*price+(qty-1)/2*price/2+price;
			System.out.println("��Ҫ֧��"+pay+"Ԫ");
		}
	}
	
}

