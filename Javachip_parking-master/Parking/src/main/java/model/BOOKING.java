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
public class BOOKING {
	
	private int B_NUM; 
	@NonNull private String ID;
	private String B_DATE;
	@NonNull private String B_EXDATE;
	@NonNull private String B_TIME;
	@NonNull private String B_PLACE;
	@NonNull private String B_PRICE;
	@NonNull private String B_YN;
	@NonNull private int B_EXTIME;
	
	public BOOKING(String B_PLACE) {
		this.B_PLACE=B_PLACE;
	}
	
}
