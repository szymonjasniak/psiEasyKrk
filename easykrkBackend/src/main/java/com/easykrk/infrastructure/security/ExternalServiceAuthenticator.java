package com.easykrk.infrastructure.security;

import java.util.Set;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.authority.AuthorityUtils;

import com.easykrk.infrastructure.security.stub.StubAuth;
import com.google.common.collect.Sets;

public class ExternalServiceAuthenticator {

	private Set<StubAuth> set=Sets.newHashSet(
			new StubAuth("psi", "psi", "ROLE_DOMAIN_USER"),
			new StubAuth("psiAdmin","psiAdmin", "ROLE_DOMAIN_USER,ROLE_DOMAIN_ADMIN")
			);
	
	
	public AuthenticationWithToken authenticate(String username, String password) {
		// TODO Auto-generated method stub
		
		if(!set.contains(new StubAuth(username, password, ""))){
			throw new BadCredentialsException("not found");
		}
		StubAuth temp=new StubAuth();
		temp.setUsername(username);
		temp.setPassword(password);
		for(StubAuth s:set){
			if(s.equals(temp)){
				temp=s;
			};
		}
		AuthenticationWithToken auth = new AuthenticationWithToken(new DomainUser(username), null,
                AuthorityUtils.commaSeparatedStringToAuthorityList(temp.getCsvAuthorities()));
		
		return auth;
	}

}
