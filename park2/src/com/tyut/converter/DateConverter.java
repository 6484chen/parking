package com.tyut.converter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;
import org.springframework.core.convert.converter.Converter;

public class DateConverter implements Converter<String , Date>{
	
	//
	private String datePattern ="yyyy-MM-dd HH:mm:ss";

	@Override
	public Date convert(String source) {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf = new SimpleDateFormat(datePattern);
		try{
			return sdf.parse(source);
		}catch(ParseException e){
			throw new IllegalArgumentException("无效的日期格式"+datePattern);
		}
	}
}
