package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
public class PARKING {
	private int P_CODE;
	@NonNull
	private String P_PLACE;
	@NonNull
	private String P_TYPE;
	@NonNull
	private String P_ADDRESS;
	@NonNull
	private String P_FULL;
	@NonNull
	private String P_PRICE;
	@NonNull
	private String P_TIME;
	@NonNull
	private String P_INFO;
	@NonNull
	private String P_ABLE;
	private String P_YN;
	private Integer P_COUNT;
	private Integer P_POS;
	
//	public PARKING(String P_PLACE,String P_YN, int P_COUNT, int P_POS) {
//		this.P_PLACE=P_PLACE;
//		this.P_YN=P_YN;
//		this.P_COUNT=P_COUNT;
//		this.P_POS=P_POS;
//	}

	public PARKING(String P_PLACE) {
		this.P_PLACE=P_PLACE;
	}
}
