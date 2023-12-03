package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter


public class REVIEW {
	
	
	private int A_NUM;
	private int P_CODE;
	@NonNull
	private String ID;
	@NonNull
	private String R_1;
	@NonNull
	private String R_2;
	@NonNull
	private String R_3;
	@NonNull
	private String R_4;
	@NonNull
	private String R_5;
	
	public REVIEW(int P_CODE) {
		this.P_CODE=P_CODE;
	}
}
