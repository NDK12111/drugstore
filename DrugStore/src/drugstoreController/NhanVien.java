/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package drugstoreController;

import java.awt.Image;

/**
 *
 * @author User
 */
public class NhanVien {
    private int maNV;
    private String tenNV;
    private String diaChi;
    private String soDienThoai;
    private float Luong;
    private String tenLoai;
    private Image hinhAnh;
    private String tenTaiKhoan;

    public NhanVien(int maNV, String tenNV, String diaChi, String soDienThoai, Image hinhAnh,float Luong, String tenLoai, String tenTaiKhoan) {
        this.maNV = maNV;
        this.tenNV = tenNV;
        this.diaChi = diaChi;
        this.soDienThoai = soDienThoai;
        this.hinhAnh = hinhAnh;
        this.Luong = Luong;
        this.tenLoai = tenLoai;
        this.tenTaiKhoan = tenTaiKhoan;
    }

    public NhanVien(){
        
    }

    public float getLuong() {
        return Luong;
    }

    public void setLuong(float Luong) {
        this.Luong = Luong;
    }
    
    public int getMaNV() {
        return maNV;
    }

    public void setMaNV(int maNV) {
        this.maNV = maNV;
    }

    public String getTenNV() {
        return tenNV;
    }

    public void setTenNV(String tenNV) {
        this.tenNV = tenNV;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public Image getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(Image hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public String getTenLoai() {
        return tenLoai;
    }

    public void setTenLoai(String tenLoai) {
        this.tenLoai = tenLoai;
    }

    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }
    
}
