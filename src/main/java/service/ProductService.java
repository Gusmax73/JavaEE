package service;

import entity.Product;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.List;

public class ProductService {
    public EntityManagerFactory emf = Persistence.createEntityManagerFactory("Web-store");
    public EntityManager entityManager = emf.createEntityManager();

    public void add(Product product){
        entityManager.getTransaction().begin();
        entityManager.merge(product);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public void delete(long id){
        entityManager.getTransaction().begin();
        entityManager.remove(getById(id));
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public Product getById(long id){
        return entityManager.find(Product.class, id);
    }

    public void update(Product product){
        entityManager.getTransaction().begin();
        entityManager.merge(product);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public List<Product> findAll(){
        TypedQuery<Product> namedQuery = entityManager.createNamedQuery("Product.findAll", Product.class);
        return namedQuery.getResultList();
    }

}
