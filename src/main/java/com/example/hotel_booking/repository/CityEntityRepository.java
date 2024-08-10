package com.example.hotel_booking.repository;

import com.example.hotel_booking.entity.CityEntity;
import com.example.hotel_booking.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CityEntityRepository extends JpaRepository<CityEntity, Long> {
}