package com.example.hospital1.controller;

import com.example.hospital1.entity.Staff;
import com.example.hospital1.repository.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StaffController {

    @Autowired
    private StaffRepository staffRepository;

    @GetMapping("/users/create")
    public String showCreateUserForm() {
        return "createUser";
    }

    @PostMapping("/users/create")
    public String createUser(
            @RequestParam String username,
            @RequestParam String password,
            @RequestParam String name,
            @RequestParam String position,
            @RequestParam String department,
            Model model) {
        Staff staff = new Staff();
        staff.setUsername(username);
        staff.setPassword(password);
        staff.setName(name);
        staff.setPosition(position);
        staff.setDepartment(department);
        staffRepository.save(staff);
        model.addAttribute("message", "User created successfully");
        return "createUser";
    }
}
