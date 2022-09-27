/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.nhkc.service;

import com.nhkc.pojo.Login;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;
/**
 *
 * @author HP
 */
public interface LoginService extends UserDetailsService{
    boolean addLogin(Login login);
    List<Login> getLogins(String key);
}
