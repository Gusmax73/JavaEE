package service;

import entity.Notebook;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.List;

public class NotebookService {
    public EntityManagerFactory emf = Persistence.createEntityManagerFactory("Web-store");
    public EntityManager entityManager = emf.createEntityManager();

    public void add(Notebook notebook){
        entityManager.getTransaction().begin();
        entityManager.merge(notebook);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public void delete(long id){
        entityManager.getTransaction().begin();
        entityManager.remove(getById(id));
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public Notebook getById(long id){
        return entityManager.find(Notebook.class, id);
    }

    public void update(Notebook notebook){
        entityManager.getTransaction().begin();
        entityManager.merge(notebook);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public List<Notebook> findAll(){
        TypedQuery<Notebook> namedQuery = entityManager.createNamedQuery("Notebook.findAll", Notebook.class);
        return namedQuery.getResultList();
    }
}
