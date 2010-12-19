package app.controllers;

import java.util.List;

import app.models.Trecho_codigo;
import app.repositories.Trecho_codigoRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class Trecho_codigoController {

	private final Result result;
	private final Trecho_codigoRepository repository;
	private final Validator validator;
	
	public Trecho_codigoController(Result result, Trecho_codigoRepository repository, Validator validator) {
		this.result = result;
		this.repository = repository;
		this.validator = validator;
	}
	
	@Get
	@Path("/trecho_codigos")
	public List<Trecho_codigo> index() {
		return repository.findAll();
	}
	
	@Post
	@Path("/trecho_codigos")
	public void create(Trecho_codigo trecho_codigo) {
		validator.validate(trecho_codigo);
		validator.onErrorUsePageOf(this).newTrecho_codigo();
		repository.create(trecho_codigo);
		result.redirectTo(this).index();
	}
	
	@Get
	@Path("/trecho_codigos/new")
	public Trecho_codigo newTrecho_codigo() {
		return new Trecho_codigo();
	}
	
	@Put
	@Path("/trecho_codigos")
	public void update(Trecho_codigo trecho_codigo) {
		validator.validate(trecho_codigo);
		validator.onErrorUsePageOf(this).edit(trecho_codigo);
		repository.update(trecho_codigo);
		result.redirectTo(this).index();
	}
	
	@Get
	@Path("/trecho_codigos/{trecho_codigo.id}/edit")
	public Trecho_codigo edit(Trecho_codigo trecho_codigo) {
		return repository.find(trecho_codigo.getId());
	}

	@Get
	@Path("/trecho_codigos/{trecho_codigo.id}")
	public Trecho_codigo show(Trecho_codigo trecho_codigo) {
		return repository.find(trecho_codigo.getId());
	}

	@Delete
	@Path("/trecho_codigos/{trecho_codigo.id}")
	public void destroy(Trecho_codigo trecho_codigo) {
		repository.destroy(repository.find(trecho_codigo.getId()));
		result.redirectTo(this).index();  
	}
	
}
