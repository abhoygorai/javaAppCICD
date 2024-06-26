package com.example.helloWorldForJenkins.helloWorld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "api/test")
public class HelloWorldController {

    @GetMapping
    public String testMethod(){
        return "hello world";
    }

}
