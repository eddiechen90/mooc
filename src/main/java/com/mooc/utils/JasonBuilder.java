package com.mooc.utils;

public class JasonBuilder {
	
	private StringBuilder sb;
	private boolean commaFollow;

	public JasonBuilder(){
		sb=new StringBuilder();
		sb.append("{");
		commaFollow=false;
	}
	
	public JasonBuilder(String property,String value){
		sb=new StringBuilder()
			.append("{\"")
			.append(property)
			.append("\":\"")
			.append(value)
			.append("\"");
		commaFollow=true;
	}

	public JasonBuilder append(String property,String value){
		if((commaFollow)){
			sb.append(",");
		}
		sb.append("\"")
			.append(property)
			.append("\":\"")
			.append(value)
			.append("\"");
		commaFollow=true;
		return this;
	}
	
	public String toJasonString(){
		return sb.append("}").toString();
	}
}
