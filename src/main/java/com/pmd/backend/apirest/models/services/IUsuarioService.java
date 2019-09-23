package com.pmd.backend.apirest.models.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.pmd.backend.apirest.models.entity.Usuario;

public interface IUsuarioService {
	
	public List<Usuario> findAll();
	
	public Page<Usuario> findAll(Pageable pageable);
	
	public Usuario findByUsername(String username);
	
	public Usuario findByEmail(String email);
	
	public Usuario save (Usuario user);
	
	public void delete (Long id);

}
