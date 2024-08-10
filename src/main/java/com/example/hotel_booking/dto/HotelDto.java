package com.example.hotel_booking.dto;

import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * DTO for {@link com.example.hotel_booking.entity.HotelEntity}
 */
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class HotelDto implements Serializable {
    private Long id;
    private LocalDateTime createdTime;
    private LocalDateTime updatedTime;
   private String hotelName;
   private String hotelAddress;
   private String hotelPhone;
   private String hotelEmail;
   private Long hotelGrade;
   private String hotelFacilities;

    HotelDto hotelDto = HotelDto.builder()
            .hotelName("Grand Hotel")
            .hotelAddress("123 Main St")
            .hotelPhone("123-456-7890")
            .build();
}