/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhkc.controllers;

import com.nhkc.pojo.KhachHang;
import com.nhkc.pojo.Login;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author HP
 */
@Controller
@ControllerAdvice
public class IndexController {

    @ModelAttribute
    public void sharedAttributes(Model m, HttpSession session) {
        m.addAttribute("currentUser", session.getAttribute("currentUser"));
    }

    @GetMapping("/")
    public String pageLogin(Model m) {

        return "PageLogin";
    }

//    @GetMapping("/sign-in")
//    public String pageSignIn() {
//
//        return "pageSignIn";
//    }

    @GetMapping("/SignUp") // Send empty object to outside.
    public String pageSignUp(Model m) {
        m.addAttribute("newLogin", new Login());
        return "SignUp";
    }
    
   
}
