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
//		System.out.println("请输入学生姓名：");
//		String name=sca.next();
//		int totalScore=0;
////		for()
//	}
	
	
	
	/*
	 * 99乘法表
	 * 1*1=1
	 * 1*2=2 2*2=4
	 * ......
	 * 
	 * 循环9次  i=1  i<=9  i++
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
	 * 百文买百鸡
	 * 公鸡  3
	 * 母鸡  2
	 * 三个小鸡  1
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
					System.out.println("公鸡"+x+"母鸡"+y+"小鸡"+z);
				}
				
			}
		}
		
		/**
		 * 从键盘输入一个整数
		 * 输出n行  *
		 *        *
		 *       ***
		 *      *****
		 * 
		 */
		System.out.println("输入一个整数");
		int n =sca.nextInt();
		for(int i=1;i<=n;i++){
			for(int j=0;j<(n-i+1);j++){
				System.out.print(" ");
			}
			for(int k=0;k<2*i-1;k++){
				System.out.print("*");
			}
			System.out.println();//换行
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
	 * 猜数字游戏：
	 *  通过生成一个随机数
	 *  然后从键盘输入一个整数  和上面的随机数去比较 
	 *  给出比较的提示，猜的次数不能超过10次
	 */
	public static void guessNumberGame(){

		
		//1.产生一个随机数
		Random ran=new Random();
		int guessNumber=ran.nextInt(100);
		int n=0;
		do{
			
			//2.输入一个整数
			System.out.println("还有"+(10-n)+"次机会，请输入您的数：");
			int number=sca.nextInt();
			
			//3.循环的和随机数进行比较  给出提示信息
			if(number>guessNumber){
				System.out.println("太大了，请小一点");
			}else if(number<guessNumber){
				System.out.println("太小了，请大一点");
			}else{
				System.out.println("恭喜你，猜对了！！！");
				break;
			}
			
			n++;
			
			//4.循环结束条件  次数不能超过10次。
		}while(n<10);
		
		if(n>10){
			System.out.println("笨笨 下次再猜吧！！！");
		}

		
	}
	
//	循环Demo
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
		
		System.out.println("1-100奇数和为"+sum1);
		
		
		/**
		 * 通过键盘输入Y/N
		 * 让循环继续或停止
		 * 
		 * 
		 * 
		 */
		
		String cmd=sca.next();
		while(!cmd.equals("y")){
			System.out.println("合格了吗？（y/n）");
			System.out.println("上午阅读教程");
			System.out.println("下午上机编程");
			cmd=sca.next();
		}
		System.out.println("完成学习任务");
		
		
		/**
		 * 从键盘输入一个整数 将这个数倒序排列：
		 * eg:12345   结果：54321
		 *  sum=0;
		 *  第一次循环：sum=0*10+12345%10=5   12345/10
		 *  第二次循环：sum=5*10+1234%10==54  1234/10
		 *  ...
		 *  
		 *  					1/10=0---循环应该结束了
		 */
		
		System.out.println("从键盘输入一个整数");
		int n2=sca.nextInt();
		int sum2=0; //保存倒序排列后值
		while(n2!=0){
			sum2=sum2*10+n2%10;
			n2/=10;
		}
		System.out.println(sum2);
		
		
//		貌似死循环
		
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
			System.out.println("请输入第一个操作数：");
			int num1=sca.nextInt();
			System.out.println("请输入第二个操作数：");
			int num2=sca.nextInt();
			System.out.println("请输入您的运算符---1、加法   2、减法   3、乘法   4、除法");
			int choise=sca.nextInt();
			double result=0;
			switch(choise){
			case 1:
//				加法运算
				result=num1+num2;
				break;
				
			case 2:
//				减法运算
				result=num1-num2;
				break;
				
			case 3:
//				乘法运算
				result=num1*num2;
				break;
				
			case 4:
//				除法运算
				result=num1*1.0/num2;
				break;
			default:System.out.println("您不按套路出牌");
			}
			
			System.out.println("运算结果"+result);
		}
		
	}
	
//	switch Demo
	public static void swdemo(){
		while(true){
			System.out.println("请输入一个分数[0-100]");
			int score=sca.nextInt();
			if(score<0){
				System.out.println("分数不能是负数！");
				System.exit(0);
			}
			
			if(score>100){
				System.out.println("分数不能大于100！");
				System.exit(0);
			}
			
			String level="";
			
			switch(score/10){
			case 10: 
			case 9: level="优秀";break;
			case 8: level="优良";break;
			case 7: level="中等";break;
			case 6: level="及格";break;
			default:level="不及格";
			}
			
			System.out.println("您的成绩等级是-"+level);
		}
	}
	
	public static void taxiPay(){
		System.out.println("请输入您的里程数：");
		int km=sca.nextInt();  //里程数
		System.out.println("请输入等待时间：");
		int waitTime=sca.nextInt();
		double basePay=13.0;
		double basePrice=2.3;
		double baseLiCheng=0.0; //基本里程费用
		double waitPay=0.0;//等待费用
		double emptyPay=0.0;//空返费用
		
		Calendar cal=Calendar.getInstance();  //获取一个Calendar对象
		int hour= cal.get(cal.HOUR_OF_DAY);  //获取当天小时数
//		System.out.println(hour);
		
		if(hour>=5 && hour<=23){
			//白天
			if(km>3){
				baseLiCheng=basePay+(km-3.0)*basePrice;
			}else{
				baseLiCheng=basePay;
			}
			
		}else{
			//晚上
			if(km>3){
				baseLiCheng=basePay+(km-3.0)*(basePrice+basePrice*0.2);
			}else{
				baseLiCheng=basePrice*1.2;
			}
		}
		
		waitPay=waitTime/5.0*2.0;  //等待费用
		
		if(km>15){
			emptyPay=(km-15)*(basePay*0.5);
		}
		
		System.out.println("基本里程费用："+baseLiCheng);
		System.out.println("等待费用："+waitPay);
		System.out.println("空驶费："+emptyPay);
		System.out.println("总费用为："+(baseLiCheng+waitPay+emptyPay)+"元");
		
	}
	
	public static void dianXinTaoCan(){
		
		System.out.println("请输入通话时长");
		int callTime=sca.nextInt();
		System.out.println("请输入短信条数");
		int message=sca.nextInt();
		System.out.println("请输入网络流量");
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
		
		System.out.println("套餐总费用为"+basePay+"元");
	}
	
	
	

	public static void cal_tax(){
		System.out.println("请输入税前工资");
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
		
		System.out.println("税前工资"+money);
		System.out.println("缴纳税额"+tax);

		System.out.println("税后工资"+(money-tax));

		
	}
	
	public static void isYear(){
//		Scanner sca=new Scanner(System.in);
		System.out.println("请输入年份：");
		int year=sca.nextInt();
		if((year%4==0) && (year%100!=0) ||(year%400==0)){
			System.out.println(year+"是一个闰年");
		}else{
			System.out.println(year+"不是一个闰年");
		}
		
		System.out.println("----------------------------");
	}
	

	public static void ourPrice(){
		System.out.println("请输入您要买的杯数");
//		Scanner sca=new Scanner(System.in);
		double pay;
		double price=6.0;
		
		int qty=sca.nextInt();
		
		if(qty<1){
			System.out.println("不卖！！！滚蛋！！！！");
			System.exit(0);
		}else if(qty%2==0){
			pay=qty/2*price+qty/2*price/2;
			System.out.println("需要支付"+pay+"元");
		}else{
			pay=(qty-1)/2*price+(qty-1)/2*price/2+price;
			System.out.println("需要支付"+pay+"元");
		}
	}
	
}

