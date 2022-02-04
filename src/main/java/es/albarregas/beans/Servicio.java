/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.beans;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author gared
 */
@Entity
@Table(name = "servicios")

public class Servicio implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idServicio")
    private int id;

    @Column(name = "nombre", length = 20, nullable = false)
    private String nombre;
    @Column(name = "path", length = 30, nullable = false)
    private String path;
    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "idPuerto", foreignKey = @ForeignKey(name
            = "FK_servicios_puertos"))
    private Puerto puerto;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Puerto getPuerto() {
        return puerto;
    }

    public void setPuerto(Puerto puerto) {
        this.puerto = puerto;
    }

}
