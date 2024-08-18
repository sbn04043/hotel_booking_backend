package com.example.hotel_booking.repository;

import com.example.hotel_booking.dto.HotelDto;
import com.example.hotel_booking.entity.HotelEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HotelRepository extends JpaRepository<HotelEntity, Long> {
    @Query(value = "SELECT id FROM hotel WHERE hotel_grade = ?1", nativeQuery = true)
    List<Long> findByGrade(Long id);

    @Query(value = "SELECT id FROM hotel WHERE city_id = ?1", nativeQuery = true)
    List<Long> findByCityId(Long id);

    @Query(value = "SELECT h.id FROM HotelEntity h WHERE h.hotelName LIKE %?1%")
    List<Long> findByHotelNameContaining(String hotelName);

    @Query(value = "SELECT id FROM hotel", nativeQuery = true)
    List<Long> findAllId();

    // 모든 호텔 이름을 중복 없이 가져오기
    @Query("SELECT DISTINCT h.hotelName FROM HotelEntity h")
    List<String> findAllHotelNames();

    List<HotelEntity> findByBusinessEntity_Id(Long userId);

}