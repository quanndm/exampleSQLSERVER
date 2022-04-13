﻿/*
* Thiết kế DB: Quản lý thư viện
*	1.TB tbl_LibraryCard(id, startedDate, ExpiredDate, nameLibrary)
*	2.TB tbl_Reader(id, Name, DOB, Gender, IdentifyCard_Id, Phone, Email, Address)
*	3.TB tbl_Bill(id, LibraryCard_ID, id_Staff, borrowed_date, ExpiredDate, quantityMax, id_Status)
*	4.TB tbl_Bill_Detail(id_Bill, id_Book,id_Status, ReturnBookDate, MoneytaryFine, Reason)
*	5.TB tbl_Staff(id, Name, DOB, Gender, IdentifyCard_Id, Phone, Email, Address, startDate)
*	6.TB tbl_Status(id, status)
*	7.Tb tbl_Book(id, id_TypeBook, Name, id_Author, id_Publisher, ListedPrice, Stock, currentQuantity, id_status, Year_Of_manufatore, content)
*	8.TB tbl_TypeBook(id, type)
*	9.TB tbl_Publisher(id, name, phone, email, address, rePresentative(Người đại diện))
*	10.TB tbl_role(id, role)
*/
CREATE DATABASE DB_LIBRARY_MANAGEMENT
GO

USE DB_LIBRARY_MANAGEMENT
GO
--1.TB tbl_LibraryCard 
CREATE TABLE TBL_LIBRARY_CARD
(
	ID NVARCHAR(50) PRIMARY KEY NOT NULL,
	CREATE_DATE DATETIME NOT NULL,
	EXPIRED_DATE DATETIME NOT NULL,
	LIBRARY_NAME VARCHAR(50) NULL
)
GO
--2.TB tbl_Reader
CREATE TABLE TBL_READER
(
	ID VARCHAR(50) NOT NULL PRIMARY KEY,
	NAME NVARCHAR(50) NOT NULL,
	DOB DATETIME NULL,
	GENDER BIT NULL,--1: MALE, 0: FEMALE
	IDENTIFYCARD_ID NVARCHAR(20) NULL,
	PHONE NVARCHAR(20) NULL,
	EMAIL NVARCHAR(50) NOT NULL,
	ADDRESS NVARCHAR(50) NULL
)
GO
--6.TB tbl_Status
CREATE TABLE TBL_STATUS
(
	ID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[STATUS] NVARCHAR(50) NOT NULL
)
--8.TB tbl_TypeBook
CREATE TABLE TBL_BOOKTYPE
(
	ID INT PRIMARY KEY NOT NULL,
	[TYPE] NVARCHAR(50) NOT NULL
)
--7.Tb tbl_Book
CREATE TABLE TBL_BOOK
(
	ID INT NOT NULL PRIMARY KEY
)
GO
--5.TB tbl_Staff
CREATE TABLE TBL_STAFF
(
	ID 
)

--3.TB tbl_Bill
CREATE TABLE TBL_BILL
(
	ID INT PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	LIBRARY_CARD_ID VARCHAR(50) NOT NULL,
	STAFF_ID VARCHAR(50) NOT NULL,
	BORROWed_DATE DATETIME NOT NULL,
	EXPIRED_DATE DATETIME NOT NULL,
	QUANTITY_MAX INT NOT NULL,
	STATUS_ID INT NOT NULL
)
GO

--4.TB tbl_Bill_Detail
CREATE TABLE TBL_BILL_DETAIL
(
	BILL_ID INT NOT NULL,
	BOOK_ID INT NOT NULL,
	STATUS_ID INT NOT NULL,
	BOOK_RETURN_DATE DATETIME NULL,
	MONEYTARY_FINE INT NULL,
	REASON NVARCHAR(200) NULL
)


