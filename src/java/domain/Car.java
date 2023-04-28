/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Car {
    @Id
    private String plateNo;
    private String model;
    private String status;
    private Integer manufacturingYear;
    private Long purchasingCost;

    public String getPlateNo() {
        return plateNo;
    }

    public void setPlateNo(String plateNo) {
        this.plateNo = plateNo;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getstatus() {
        return status;
    }

    public void setstatus(String status) {
        this.status = status;
    }

    public Integer getManufacturingYear() {
        return manufacturingYear;
    }

    public void setManufacturingYear(Integer manufacturingYear) {
        this.manufacturingYear = manufacturingYear;
    }

  
    public Long getPurchasingCost() {
        return purchasingCost;
    }

    public void setPurchasingCost(Long purchasingCost) {
        this.purchasingCost = purchasingCost;
    }
    
  
 /**
    @Override
    public int hashCode() {
        int hash = 5;
        hash = 29 * hash + Objects.hashCode(this.plateNo);
        return hash;
    }

   @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Car other = (Car) obj;
        if (!Objects.equals(this.plateNo, other.plateNo)) {
            return false;
        }
        return true;
    }

    */


}
