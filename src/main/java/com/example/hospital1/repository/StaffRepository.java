package com.example.hospital1.repository;

import com.example.hospital1.entity.Staff;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StaffRepository extends JpaRepository<Staff, Long> {
    Staff findByUsername(String username);
}
