package com.example.hospital1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import oshi.SystemInfo;
import oshi.hardware.GlobalMemory;
import oshi.hardware.HWDiskStore;

import java.text.DecimalFormat;

@Controller
public class HardwareController {

    @GetMapping("/hardware")
    public String getHardwareInfo(Model model) {
        SystemInfo systemInfo = new SystemInfo();
        GlobalMemory memory = systemInfo.getHardware().getMemory();
        HWDiskStore diskStore = systemInfo.getHardware().getDiskStores().get(0); // OSHI 5.8.2 returns a list

        double totalMemoryGB = memory.getTotal() / (1024.0 * 1024 * 1024);
        double availableMemoryGB = memory.getAvailable() / (1024.0 * 1024 * 1024);
        double usedMemoryGB = totalMemoryGB - availableMemoryGB;
        double memoryUsagePercentage = (usedMemoryGB / totalMemoryGB) * 100;
        double totalDiskGB = diskStore.getSize() / (1024.0 * 1024 * 1024);
        double availableDiskGB = (diskStore.getSize() - diskStore.getWriteBytes()) / (1024.0 * 1024 * 1024); // Calculate usable space
        double usedDiskGB = totalDiskGB - availableDiskGB;
        double diskUsagePercentage = (usedDiskGB / totalDiskGB) * 100;

        DecimalFormat df = new DecimalFormat("#.00");

        model.addAttribute("totalMemoryGB", df.format(totalMemoryGB));
        model.addAttribute("availableMemoryGB", df.format(availableMemoryGB));
        model.addAttribute("usedMemoryGB", df.format(usedMemoryGB));
        model.addAttribute("memoryUsagePercentage", df.format(memoryUsagePercentage));
        model.addAttribute("totalDiskGB", df.format(totalDiskGB));
        model.addAttribute("usedDiskGB", df.format(usedDiskGB));
        model.addAttribute("diskUsagePercentage", df.format(diskUsagePercentage));

        return "hardware";
    }
}
