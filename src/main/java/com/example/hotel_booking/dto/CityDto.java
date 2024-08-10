package com.example.hotel_booking.dto;

import lombok.*;

import java.io.Serializable;

/**
 * DTO for {@link com.example.hotel_booking.entity.CityEntity}
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CityDto implements Serializable {
    private Long id;
    private String cityName;
}