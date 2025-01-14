package com.pmd.backend.apirest.auth;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.stereotype.Component;

import com.pmd.backend.apirest.models.entity.Usuario;
import com.pmd.backend.apirest.models.services.IUsuarioService;

@Component
public class AditionalInfoToken implements TokenEnhancer {

	@Autowired
	private IUsuarioService userService;

	@Override
	public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) {

		Usuario user = userService.findByUsername(authentication.getName());
		Map<String, Object> info = new HashMap<>();
		info.put("info adicional", "Hola que tal!".concat(authentication.getName()));

		info.put("email", user.getEmail());

		((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(info);

		return accessToken;
	}

}
