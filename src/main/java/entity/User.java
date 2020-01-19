package entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table (name = "users")
@NamedQueries({
        @NamedQuery(name = "User.findAll", query = "SELECT c FROM User c"),
        @NamedQuery(name = "User.findByLogin", query = "SELECT c FROM User c WHERE c.login = :login"),
        @NamedQuery(name = "User.findByEmail", query = "SELECT c FROM User c WHERE c.email = :email"),
        @NamedQuery(name = "User.checkPassword", query = "SELECT c FROM User c WHERE c.login = :login and c.password = :password"),
})

public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String login;

    @Column
    private String email;

    @Column
    private String password;

    //---------------------------------------< Getters and setters section >--------------------------------------------
    public User() {
    }

    public User(String login, String email, String password){
        this.login = login;
        this.email = email;
        this.password = password;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getLogin() { return login; }
    public void setLogin(String login) { this.login = login; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String login) { this.password = password; }

    @Override
    public String toString() {
        return "User: " + this.id + ", " + this.login + ", " + this.email + ", " + this.password;
    }
}
