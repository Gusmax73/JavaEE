package entity;

import javax.persistence.*;

@Entity
@Table(name = "camera")
@NamedQuery(name = "Camera.findAll", query = "SELECT c FROM Camera c")
public class Camera {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String brand;

    @Column
    private String model;

    @Column(length = 511)
    private String description;

    @Column
    private Long price;

    //---------------------------------------< Getters and setters section >--------------------------------------------
    public Camera() {
    }

    public Camera(String brand, String model, String description, Long price){
        this.brand = brand;
        this.model = model;
        this.description = description;
        this.price = price;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getBrand() { return brand; }
    public void setBrand(String brand) { this.brand = brand; }

    public String getModel() { return model; }
    public void setModel(String model) { this.model = model; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public Long getPrice() { return price; }
    public void setPrice(Long price) { this.price = price; }
}
