package entity;

import javax.persistence.*;

@Entity
@Table(name = "products")
@NamedQuery(name = "Product.findAll", query = "SELECT c FROM Product c")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String name;

    @Column
    private String nameRus;
    //---------------------------------------< Getters and setters section >--------------------------------------------
    public Product() {
    }

    public Product(String name, String nameRus){
        this.name = name;
        this.nameRus = nameRus;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getNameRus() { return nameRus; }
    public void setNameRus(String nameRus) { this.nameRus = nameRus; }
}
