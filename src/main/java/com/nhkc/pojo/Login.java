/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhkc.pojo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "login")
public class Login implements Serializable {

    public static final String MANAGER = "manager";
    public static final String STAFF = "staff";
    public static final String GUEST = "guest";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Login_id;

    @Column(nullable = false, length = 100)
    private String Login_loai;

    @Column(nullable = false, length = 100, unique = true)
    private String Login_user;

    @Column(nullable = false, length = 100)
    private String Login_pass;

    @Column(length = 100)
    private String GhiChu;

    @Column
    private String Login_avatar;

    @Transient
    private MultipartFile file;

    @Transient
    private String confirmPass;

    @Transient
    private String tempHo;

    @Transient
    private String tempTen;

//    private ViTri ViTri;
    @Transient
    private String tempNgaySinh;

    @Transient
    private String tempQueQuan;

    @Transient
    private String tempSdt;

    @Transient
    private String tempEmail;

    public int getLogin_id() {
        return Login_id;
    }

    public void setLogin_id(int Login_id) {
        this.Login_id = Login_id;
    }

    public String getLogin_loai() {
        return Login_loai;
    }

    public void setLogin_loai(String Login_loai) {
        this.Login_loai = Login_loai;
    }

    public String getLogin_user() {
        return Login_user;
    }

    public void setLogin_user(String Login_user) {
        this.Login_user = Login_user;
    }

    public String getLogin_pass() {
        return Login_pass;
    }

    public void setLogin_pass(String Login_pass) {
        this.Login_pass = Login_pass;
    }

    public String getGhiChu() {
        return GhiChu;
    }

    public void setGhiChu(String GhiChu) {
        this.GhiChu = GhiChu;
    }

    public String getConfirmPass() {
        return confirmPass;
    }

    public void setConfirmPass(String confirmPass) {
        this.confirmPass = confirmPass;
    }

    public String getLogin_avatar() {
        return Login_avatar;
    }

    public void setLogin_avatar(String Login_avatar) {
        this.Login_avatar = Login_avatar;
    }

    /**
     * @return the tempHo
     */
    public String getTempHo() {
        return tempHo;
    }

    /**
     * @param tempHo the tempHo to set
     */
    public void setTempHo(String tempHo) {
        this.tempHo = tempHo;
    }

    /**
     * @return the tempTen
     */
    public String getTempTen() {
        return tempTen;
    }

    /**
     * @param tempTen the tempTen to set
     */
    public void setTempTen(String tempTen) {
        this.tempTen = tempTen;
    }

    /**
     * @return the tempNgaySinh
     */
    public String getTempNgaySinh() {
        return tempNgaySinh;
    }

    /**
     * @param tempNgaySinh the tempNgaySinh to set
     */
    public void setTempNgaySinh(String tempNgaySinh) {
        this.tempNgaySinh = tempNgaySinh;
    }

    /**
     * @return the tempQueQuan
     */
    public String getTempQueQuan() {
        return tempQueQuan;
    }

    /**
     * @param tempQueQuan the tempQueQuan to set
     */
    public void setTempQueQuan(String tempQueQuan) {
        this.tempQueQuan = tempQueQuan;
    }

    /**
     * @return the tempSdt
     */
    public String getTempSdt() {
        return tempSdt;
    }

    /**
     * @param tempSdt the tempSdt to set
     */
    public void setTempSdt(String tempSdt) {
        this.tempSdt = tempSdt;
    }

    /**
     * @return the tempEmail
     */
    public String getTempEmail() {
        return tempEmail;
    }

    /**
     * @param tempEmail the tempEmail to set
     */
    public void setTempEmail(String tempEmail) {
        this.tempEmail = tempEmail;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

}