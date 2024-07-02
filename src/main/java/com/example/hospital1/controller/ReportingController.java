package com.example.hospital1.controller;

import com.example.hospital1.entity.PatientBill;
import com.example.hospital1.repository.PatientBillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
public class ReportingController {

    @Autowired
    private PatientBillRepository patientBillRepository;

    @GetMapping("/reporting")
    public String showReport(Model model) {
        List<PatientBill> allBills = patientBillRepository.findAll();

        int totalPatients = allBills.size();
        double totalBillAmount = allBills.stream().mapToDouble(PatientBill::getAmount).sum();
        int averageAge = (int) Math.round(allBills.stream().mapToInt(PatientBill::getAge).average().orElse(0));
        int medianAge = (int) Math.round(allBills.stream().mapToInt(PatientBill::getAge).sorted().skip((totalPatients - 1) / 2).limit(2 - totalPatients % 2).average().orElse(0));
        long maleCount = allBills.stream().filter(bill -> "Male".equalsIgnoreCase(bill.getGender())).count();
        long femaleCount = allBills.stream().filter(bill -> "Female".equalsIgnoreCase(bill.getGender())).count();

        double malePercentage = maleCount * 100.0 / totalPatients;
        double femalePercentage = femaleCount * 100.0 / totalPatients;

        Map<String, Long> medicalHistoryCount = allBills.stream()
                .collect(Collectors.groupingBy(PatientBill::getMedicalHistory, Collectors.counting()));

        model.addAttribute("totalPatients", totalPatients);
        model.addAttribute("totalBillAmount", totalBillAmount);
        model.addAttribute("averageAge", averageAge);
        model.addAttribute("medianAge", medianAge);
        model.addAttribute("malePercentage", Math.round(malePercentage));
        model.addAttribute("femalePercentage", Math.round(femalePercentage));
        model.addAttribute("medicalHistoryCount", medicalHistoryCount);

        return "reporting";
    }
}
