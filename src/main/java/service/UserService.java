package service;

import entity.User;

import javax.persistence.*;
import java.util.List;

public class UserService {
    public EntityManagerFactory emf = Persistence.createEntityManagerFactory("Web-store");
    public EntityManager entityManager = emf.createEntityManager();

    public void add(User user){
        entityManager.getTransaction().begin();
        entityManager.merge(user);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public void delete(long id){
        entityManager.getTransaction().begin();
        entityManager.remove(getById(id));
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public User getById(long id){
        return entityManager.find(User.class, id);
    }

    public void update(User user){
        entityManager.getTransaction().begin();
        entityManager.merge(user);
        entityManager.flush();
        entityManager.getTransaction().commit();
    }

    public List<User> findAll(){
        TypedQuery<User> namedQuery = entityManager.createNamedQuery("User.findAll", User.class);
        return namedQuery.getResultList();
    }

    public List<User> findByLogin(String login){
        TypedQuery<User> namedQuery = entityManager.createNamedQuery("User.findByLogin", User.class).setParameter("login", login);
        return namedQuery.getResultList();
    }

    public List<User> findByEmail(String email){
        TypedQuery<User> namedQuery = entityManager.createNamedQuery("User.findByEmail", User.class).setParameter("email", email);
        return namedQuery.getResultList();
    }

    public boolean checkPassword(String login, String password){
        TypedQuery<User> namedQuery = entityManager.createNamedQuery("User.checkPassword", User.class).setParameter("login", login).setParameter("password", password);
        return !namedQuery.getResultList().isEmpty();
    }
}
