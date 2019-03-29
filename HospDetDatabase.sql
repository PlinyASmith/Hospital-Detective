
#John Crissman
#Anali Negrete
#Pliny Smith
#Final CS 401 Project - Hospital Detective Database
CREATE DATABASE HospitalDetective_db;
USE HospitalDetective_db;

GRANT ALL PRIVILEGES ON Advising_db TO 'student'@'localhost';
FLUSH PRIVILEGES;
USE Advising_db;

        
    CREATE TABLE Hospital(
	HospitalName CHAR(64),
    HospitalID INTEGER,
    PRIMARY KEY (HospitalID)
    );
    
    
    CREATE TABLE Patient(
	FirstName CHAR(64),
    LastName CHAR(64),
    Age INTEGER,
    LocationName CHAR(64),
    LocationXCoord INTEGER,
    LocationYCoord INTEGER,
    MedicalProcedure CHAR(64),
    MaxDistance INTEGER,
    PatientID INTEGER,
    PRIMARY KEY (PatientID)
    );


    CREATE TABLE MedicalProcedure(
	MedicalProcedureNamw CHAR(64),
    MedicalProcedureID INTEGER,
    PRIMARY KEY (MedicalProcedureID),
	FOREIGN KEY (HospitalID) REFERENCES Hospital(HospitalID)
    );
    

	CREATE TABLE InsuranceCompany(
	InsuranceCompanyID INTEGER,
	InsuranceCompanyName CHAR(64),
	UserPassword CHAR(64),
	PRIMARY KEY (InsuranceCompanyID),
	);
    