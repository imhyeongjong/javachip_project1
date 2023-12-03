package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString

public class PAY {
	private int A_NUM; //결제순번
	private int B_NUM; //예약순번
	private String A_DATE; //결제일시
	private String A_YN; //결제구분(타입-카드인지 간편결제인지 하는거)
	private String A_PRICE; //금액
	
	
}
