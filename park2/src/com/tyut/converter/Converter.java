package com.tyut.converter;

public interface Converter <S,T>{
	T convert(S source);
}
