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


	public PARKING(String P_PLACE) {
		this.P_PLACE=P_PLACE;
	}
	
	public PARKING(String P_PLACE, String P_TYPE, String P_ADDRESS, String P_PRICE, String P_TIME, String P_ABLE,
			String P_INFO) {
		this.P_PLACE=P_PLACE;
		this.P_TYPE=P_TYPE;
		this.P_ADDRESS=P_ADDRESS;
		this.P_PRICE=P_PRICE;
		this.P_TIME=P_TIME;
		this.P_ABLE=P_ABLE;
		this.P_INFO=P_INFO;
	}
}
