package com.example.hospital1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.hospital1.entity.Staff;
import com.example.hospital1.repository.StaffRepository;

@Controller
public class DashboardController {

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        // Add attributes to the model as needed
        return "dashboard";
    }

    @GetMapping("/patients")
    public String patientDetails(Model model) {
        return "redirect:/bills";
    }

    @Autowired
    private StaffRepository staffRepository;

    @GetMapping("/create")
    public String showCreateUserForm(Model model) {
        model.addAttribute("staff", new Staff());
        return "create_user";
    }

    @PostMapping("/create")
    public String createUser(Staff staff) {
        staffRepository.save(staff);
        return "redirect:/dashboard";
    }

    @GetMapping("/reports")
    public String reports(Model model) {
        // Logic for reporting statistics
        return "reports";
    }

    @GetMapping("/feedback")
    public String feedback(Model model) {
        // Logic for feedback form
        return "feedback";
    }
}
