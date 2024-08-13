package com.example.hotel_booking.dto;

import com.example.hotel_booking.entity.HotelEntity;
import com.example.hotel_booking.entity.HotelFileEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Value;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * DTO for {@link com.example.hotel_booking.entity.HotelEntity}
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class HotelDto implements Serializable {
    private LocalDateTime createdTime;
    private LocalDateTime updatedTime;
    private Long id;
    private String hotelName;
    private String hotelAddress;
    private String hotelPhone;
    private String hotelEmail;
    private Long hotelGrade;
    private Long cityId;


    public static HotelDto toHotelDto(HotelEntity hotelEntity) {
        HotelDto hotelDto = new HotelDto();
        hotelDto.setId(hotelEntity.getId());
        hotelDto.setHotelName(hotelEntity.getHotelName());
        hotelDto.setHotelAddress(hotelEntity.getHotelAddress());
        hotelDto.setHotelEmail(hotelEntity.getHotelEmail());
        hotelDto.setHotelPhone(hotelEntity.getHotelPhone());
        hotelDto.setHotelGrade(hotelEntity.getHotelGrade());

        return hotelDto;
    }



}