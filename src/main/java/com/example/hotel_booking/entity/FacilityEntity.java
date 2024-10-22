package com.example.hotel_booking.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data

@Entity
@Table(name = "facility")
public class FacilityEntity {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @Column(name = "facility_name")
        private String facilityName;
}

