package com.easykrk.infrastructure.security;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import com.fasterxml.jackson.annotation.JsonProperty;

@Getter
@Setter
@AllArgsConstructor
public class TokenResponse {

	@JsonProperty
    private String token;
	
	@JsonProperty
	private int valid;

    public TokenResponse() {
    }

}
