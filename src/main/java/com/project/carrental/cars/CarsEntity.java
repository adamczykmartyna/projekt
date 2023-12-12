package com.project.carrental.cars;

import com.project.carrental.Rental_CompanyEntity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import static jakarta.persistence.FetchType.LAZY;

@Entity
@Table(name = "cars")
@Getter
@Setter
@NoArgsConstructor

public class CarsEntity
{

    @OneToOne(fetch = LAZY)
    @JoinColumn(name = "rental_company_id")
    Rental_CompanyEntity rental_companyEntity;

    @Getter
    @Id
    private String id, brand, model, engine, air_conditioning, gearbox, seats, doors;
}
