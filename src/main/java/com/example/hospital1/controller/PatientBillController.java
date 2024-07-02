package com.example.hospital1.controller;

import com.example.hospital1.entity.PatientBill;
import com.example.hospital1.repository.PatientBillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/bills")
public class PatientBillController {

    @Autowired
    private PatientBillRepository patientBillRepository;

    @GetMapping
    public String listBills(Model model, @RequestParam(defaultValue = "0") int page) {
        Pageable pageable = PageRequest.of(page, 40);
        Page<PatientBill> billsPage = patientBillRepository.findAllByOrderByIdAsc(pageable);
        model.addAttribute("billsPage", billsPage);
        model.addAttribute("currentPage", page);
        return "bills";
    }

    @GetMapping("/editBill/{id}")
    public String editBill(@PathVariable("id") Long id, Model model, @RequestParam(defaultValue = "0") int page) {
        PatientBill bill = patientBillRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid bill Id:" + id));
        model.addAttribute("bill", bill);
        model.addAttribute("currentPage", page);
        return "editBill";
    }

    @GetMapping("/deleteBill/{id}")
    public String deleteBill(@PathVariable("id") Long id, @RequestParam(defaultValue = "0") int page) {
        PatientBill bill = patientBillRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid bill Id:" + id));
        patientBillRepository.delete(bill);
        return "redirect:/bills?page=" + page;
    }

    @PostMapping("/updateBill")
    public String updateBill(@ModelAttribute("bill") PatientBill bill, @RequestParam(defaultValue = "0") int page) {
        patientBillRepository.save(bill);
        return "redirect:/bills?page=" + page;
    }

    @GetMapping("/add")
    public String showAddBillForm(Model model, @RequestParam(defaultValue = "0") int page) {
        model.addAttribute("bill", new PatientBill());
        model.addAttribute("currentPage", page);
        return "addBill";
    }

    @PostMapping("/saveBill")
    public String saveBill(@ModelAttribute("bill") PatientBill bill, @RequestParam(defaultValue = "0") int page) {
        patientBillRepository.save(bill);
        return "redirect:/bills?page=" + page;
    }
}
