package com.example.hospital1.repository;

import com.example.hospital1.entity.PatientBill;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientBillRepository extends JpaRepository<PatientBill, Long> {
    Page<PatientBill> findAllByOrderByIdAsc(Pageable pageable);
}
