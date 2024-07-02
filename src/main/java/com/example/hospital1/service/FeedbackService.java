package com.example.hospital1.service;

import com.example.hospital1.entity.Feedback;
import com.example.hospital1.repository.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FeedbackService {

    @Autowired
    private FeedbackRepository feedbackRepository;

    public void saveFeedback(Feedback feedback) {
        feedbackRepository.save(feedback);
    }
}
