package main.controller;

import org.hibernate.annotations.GeneratorType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EntryController {
    @RequestMapping("/login")
    public String onSign(){
        return "main";
    }
    @RequestMapping("/register")
    public String onMainReg(){
        return "main";
    }
}