package com.example.hotel_booking.service;

import com.example.hotel_booking.dto.RoomDto;
import com.example.hotel_booking.entity.HotelEntity;
import com.example.hotel_booking.entity.RoomEntity;
import com.example.hotel_booking.entity.RoomTypeEntity;
import com.example.hotel_booking.repository.*;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service

public class RoomService {


    private final HotelRepository HOTEL_REPOSITORY;
    private final RoomRepository ROOM_REPOSITORY;
    private final RoomFileRepository ROOM_FILE_REPOSITORY;
    private final RoomTypeRepository ROOM_TYPE_REPOSITORY;
    private final FacilityRepository facilityRepository;


    public RoomService(HotelRepository HOTEL_REPOSITORY, RoomRepository ROOM_REPOSITORY, RoomFileRepository ROOM_FILE_REPOSITORY, RoomTypeRepository ROOM_TYPE_REPOSITORY, FacilityRepository facilityRepository) {
        this.HOTEL_REPOSITORY = HOTEL_REPOSITORY;
        this.ROOM_REPOSITORY = ROOM_REPOSITORY;
        this.ROOM_FILE_REPOSITORY = ROOM_FILE_REPOSITORY;
        this.ROOM_TYPE_REPOSITORY = ROOM_TYPE_REPOSITORY;
        this.facilityRepository = facilityRepository;
    }

    public Long insert(RoomDto roomDto) throws IOException {

        Optional<HotelEntity> optionalHotelEntity = HOTEL_REPOSITORY.findById(roomDto.getHotelId());
        if (optionalHotelEntity.isPresent()) {
            HotelEntity hotelEntity = optionalHotelEntity.get();

            RoomTypeEntity roomTypeEntity = ROOM_TYPE_REPOSITORY.findById(roomDto.getRoomTypeId()).get();
            RoomEntity roomEntity = RoomEntity.toInsertEntity(roomDto, hotelEntity, roomTypeEntity);
            return ROOM_REPOSITORY.save(roomEntity).getId();

        }
        return null;
    }

    @Transactional
    public List<RoomDto> selectAll(Long hotelId) {
        HotelEntity hotelEntity = HOTEL_REPOSITORY.findById(hotelId).get();
        List<RoomEntity> roomEntityList = ROOM_REPOSITORY.findAllByHotelEntityOrderByIdDesc(hotelEntity);
        List<RoomDto> roomDtoList = new ArrayList<>();
        for (RoomEntity roomEntity : roomEntityList) {
            RoomDto roomDto = RoomDto.toRoomDto(roomEntity, hotelId);
            roomDtoList.add(roomDto);
        }
        return roomDtoList;
    }

    @Transactional
    public RoomDto selectOne(Long roomId) {
        Optional<RoomEntity> optionalRoomEntity = ROOM_REPOSITORY.findById(roomId);
//        System.out.println(optionalRoomEntity);
        if (optionalRoomEntity.isPresent()) {
            RoomEntity roomEntity = optionalRoomEntity.get();
            RoomDto roomDto = RoomDto.toRoomDto(roomEntity, roomEntity.getHotelEntity().getId());
            return roomDto;
        } else {
            return null;
        }
    }

    @Transactional
    public RoomDto update(RoomDto roomDto) {
        HotelEntity hotelEntity = HOTEL_REPOSITORY.findById(roomDto.getHotelId()).get();
        RoomTypeEntity roomTypeEntity = ROOM_TYPE_REPOSITORY.findById(roomDto.getRoomTypeId()).get();
        RoomEntity roomEntity = RoomEntity.toUpdateEntity(roomDto, hotelEntity, roomTypeEntity);
        ROOM_REPOSITORY.save(roomEntity);
        return selectOne(roomDto.getId());
    }

    @Transactional
    public void delete(Long id) {
        ROOM_REPOSITORY.deleteById(id);
    }


}
