CREATE DATABASE Patient_Appointment_Management_System;
USE Patient_Appointment_Management_System;


CREATE TABLE Patients (
patientID INT PRIMARY KEY,
name VARCHAR(30),
age INT,
Gender VARCHAR(10)
);


INSERT INTO Patients VALUES (100, 'Adam', 36, 'Male');
INSERT INTO Patients VALUES (101, 'Suchit Raj', 21, 'Male');
INSERT INTO Patients VALUES (102, 'Kinvi Shah', 21, 'Female');
INSERT INTO Patients VALUES (103, 'Krishna Teja', 25, 'Male');

UPDATE Patients
SET patientID = 100,
    name = 'Adam',
    age = 36,
    Gender = 'Male'
WHERE patientID = 1;



CREATE TABLE Doctors (
DoctorID INT PRIMARY KEY,
Name VARCHAR(30),
Specilization VARCHAR(40)
);

INSERT INTO Doctors VALUES (200, 'Praveen K', 'Cardiology');
INSERT INTO Doctors VALUES (201, 'Scott R', 'Cardiology');
INSERT INTO Doctors VALUES (300, 'Piyush D', 'Endocronologist');


UPDATE Doctors
SET DoctorID = 200,
    name = 'Praveen K',
    Specilization = 'Cardiology'
WHERE DoctorID = 1;


CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date DATE,
    Time TIME,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO Appointments VALUES (1, 100, 200, '2024-04-15', '10:30:00');
INSERT INTO Appointments VALUES (2, 103, 300, '2022-07-16', '11:45:00');

SELECT p.Name AS PatientName, d.Name AS DoctorName, a.Date, a.Time
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID;





SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Appointments;



