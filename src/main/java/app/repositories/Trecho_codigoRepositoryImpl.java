package app.repositories;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import app.models.Trecho_codigo;

@Component
public class Trecho_codigoRepositoryImpl 
    extends Repository<Trecho_codigo, Long>
    implements Trecho_codigoRepository {

	public Trecho_codigoRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
