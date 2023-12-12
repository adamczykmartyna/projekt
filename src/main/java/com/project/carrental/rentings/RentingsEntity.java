package com.project.carrental.rentings;

import com.project.carrental.clients.ClientEntity;
import com.project.carrental.global.GlobalEntity;
import com.project.carrental.rental_companies.Rental_CompanyEntity;
import com.project.carrental.cars.CarsEntity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import static jakarta.persistence.FetchType.LAZY;

@Entity
@Table(name = "rentings")
@Getter
@Setter
@NoArgsConstructor
public class RentingsEntity extends GlobalEntity {

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "rental_company_id")
    Rental_CompanyEntity rental_companyEntity;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "car_id")
    CarsEntity carsEntity;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "client_id")
    ClientEntity clientsEntity;

    private java.sql.Date hireDate;

    private String hirePlace;

    private java.sql.Date returnDate;

    private String returnPlace;

}