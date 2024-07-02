package com.example.hospital1.controller;

import com.example.hospital1.entity.Feedback;
import com.example.hospital1.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    @PostMapping("/submitFeedback")
    public String submitFeedback(
            @RequestParam("staffId") String staffId,
            @RequestParam("department") String department,
            @RequestParam("email") String email,
            @RequestParam("title") String title,
            @RequestParam("content") String content,
            Model model) {
        
        Feedback feedback = new Feedback();
        feedback.setStaffId(staffId);
        feedback.setDepartment(department);
        feedback.setEmail(email);
        feedback.setTitle(title);
        feedback.setContent(content);

        feedbackService.saveFeedback(feedback);
        
        return "feedbackSuccess";
    }
}
