package com.example.hotel_booking.repository;

import com.example.hotel_booking.entity.HotelEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface HotelEntityRepository extends JpaRepository<HotelEntity, Long> {

    @Query("SELECT h FROM HotelEntity h JOIN h.cityEntity c WHERE h.id = :hotelId AND c.id = :cityId")
    List<HotelEntity> findByHotelIdAndCityId(Long hotelId, Long cityId);

    @Query(value = "SELECT h.* FROM hotel h INNER JOIN city c ON h.city_id = c.id WHERE h.id = :hotelId AND c.id = :cityId", nativeQuery = true)
    List<HotelEntity> findByHotelIdAndCityIdNative(Long hotelId, Long cityId);

    List<HotelEntity> findByIdAndCityEntityId(Long hotelId, Long cityId);
}
