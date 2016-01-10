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
public class FormaStudiow {
	
	private String nazwa;

	private List<ProgramKsztalcenia> programyKsztalcenia;
}
