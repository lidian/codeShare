package app.repositories;

import java.util.List;

import app.models.Trecho_codigo;

public interface Trecho_codigoRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(Trecho_codigo entity);
	
	void update(Trecho_codigo entity);
	
	void destroy(Trecho_codigo entity);
	
	Trecho_codigo find(Long id);
	
	List<Trecho_codigo> findAll();

}
