package com.project.carrental.clients;

import com.project.carrental.rentings.RentingsEntity;
import com.project.carrental.global.GlobalEntity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

import static jakarta.persistence.FetchType.LAZY;

@Entity
@Table(name = "clients")
@Getter
@Setter
@NoArgsConstructor
public class ClientEntity extends GlobalEntity {

    @OneToMany(mappedBy = "clientsEntity", fetch = LAZY)
    private List<RentingsEntity> rentings;

    @Getter
    @Id
    private String id, first_name, last_name, phone_number, address, city, postal_code;

}