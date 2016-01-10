package com.easykrk.model;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ObszarKsztalcenia {

	private String nazwa;
	
	private UdzialProcentowy udzialProcentowy;
	private List<Mek> mek;
}
