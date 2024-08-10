package com.example.hotel_booking.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

/**
 * packageName : com.example.hotelbooking.entity
 * fileName    : InfoEntity
 * author      : jaejun
 * date        : 2024-08-06
 * description : 예약정보
 * ===================================================
 * DATE             AUTHOR              NOTE
 * ---------------------------------------------------
 * 2024-08-06         jaejun
 */

@Getter
@Setter
@Entity
@Table(name = "room")
public class RoomEntity extends TimeEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // 방 이름
    @Column(name = "room_name", nullable = false)
    private String roomName;

    // 룸 갯수
    @Column(name = "room_max", nullable = false)
    private Long roomMax;

    // 룸 가격
    @Column(name = "room_price", nullable = false)
    private Long roomPrice;

    // 방 설명
    @Column(name = "room_content", nullable = false)
    private String roomContent;

    // 체크인 시간
    @Column(name = "check_in", nullable = false)
    private LocalDateTime checkIn;

    // 체크아웃 시간
    @Column(name = "check_out", nullable = false)
    private LocalDateTime checkOut;

    @Column(name = "breakfast_price", nullable = false)
    private Long breakfastPrice;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="room_type_id")
    private RoomTypeEntity roomTypeEntity;

}
