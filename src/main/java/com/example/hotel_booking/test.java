package com.example.hotel_booking;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class test {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        System.out.println(encoder.encode("a"));
    }
}
