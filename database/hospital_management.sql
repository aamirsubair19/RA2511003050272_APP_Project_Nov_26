-- Smart Hospital Management System
-- Database schema based on util.DatabaseSetup.java
-- This script creates the database and its eight tables.
-- It does not insert patient records or other sample data.

CREATE DATABASE IF NOT EXISTS hospital_management;
USE hospital_management;

CREATE TABLE IF NOT EXISTS patient (
                                       patient_id INT PRIMARY KEY AUTO_INCREMENT,
                                       name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(20),
    phone VARCHAR(15),
    address VARCHAR(255)
    );

CREATE TABLE IF NOT EXISTS doctor (
                                      doctor_id INT PRIMARY KEY AUTO_INCREMENT,
                                      name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(15)
    );

CREATE TABLE IF NOT EXISTS appointment (
                                           appointment_id INT PRIMARY KEY AUTO_INCREMENT,
                                           patient_id INT,
                                           doctor_id INT,
                                           appointment_date DATE,
                                           appointment_time TIME,
                                           status VARCHAR(30),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
    );

CREATE TABLE IF NOT EXISTS users (
                                     user_id INT PRIMARY KEY AUTO_INCREMENT,
                                     username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    role VARCHAR(30) NOT NULL
    );

CREATE TABLE IF NOT EXISTS medicine (
                                        medicine_id INT PRIMARY KEY AUTO_INCREMENT,
                                        medicine_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    price DECIMAL(10,2) NOT NULL
    );

CREATE TABLE IF NOT EXISTS consultation (
                                            consultation_id INT PRIMARY KEY AUTO_INCREMENT,
                                            patient_id INT NOT NULL,
                                            doctor_id INT NOT NULL,
                                            appointment_id INT NOT NULL,
                                            symptoms VARCHAR(500),
    diagnosis VARCHAR(500),
    notes VARCHAR(1000),
    treatment VARCHAR(500),
    consultation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
    FOREIGN KEY (appointment_id) REFERENCES appointment(appointment_id)
    );

CREATE TABLE IF NOT EXISTS prescription (
                                            prescription_id INT PRIMARY KEY AUTO_INCREMENT,
                                            consultation_id INT NOT NULL,
                                            patient_id INT NOT NULL,
                                            doctor_id INT NOT NULL,
                                            medicine_id INT NOT NULL,
                                            dosage VARCHAR(100),
    duration VARCHAR(100),
    instructions VARCHAR(500),
    prescription_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (consultation_id) REFERENCES consultation(consultation_id),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
    FOREIGN KEY (medicine_id) REFERENCES medicine(medicine_id)
    );

CREATE TABLE IF NOT EXISTS emergency_case (
                                              emergency_id INT PRIMARY KEY AUTO_INCREMENT,
                                              patient_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(20),
    condition_description VARCHAR(500),
    symptoms VARCHAR(500),
    blood_group VARCHAR(10),
    ambulance_number VARCHAR(50),
    eta VARCHAR(50),
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
