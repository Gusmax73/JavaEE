package service;

import entity.Camera;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.List;

public class CameraService {
    public EntityManagerFactory emf = Persistence.createEntityManagerFactory("Web-store");
    public EntityManager entityManager = emf.createEntityManager();

    public void add(Camera camera){
        entityManager.getTransaction().begin();
        entityManager.merge(camera);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public void delete(long id){
        entityManager.getTransaction().begin();
        entityManager.remove(getById(id));
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public Camera getById(long id){
        return entityManager.find(Camera.class, id);
    }

    public void update(Camera camera){
        entityManager.getTransaction().begin();
        entityManager.merge(camera);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public List<Camera> findAll(){
        TypedQuery<Camera> namedQuery = entityManager.createNamedQuery("Camera.findAll", Camera.class);
        return namedQuery.getResultList();
    }
}
