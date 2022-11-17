/*
CREATE DATABASE [�������� �������]
GO

USE [�������� �������]
GO
*/

/* =============================================== */



CREATE TABLE [Գ볿]
(
	[��� ��볿] DECIMAL(8, 0) NOT NULL,
	[������������ ��볿] NVARCHAR(100) NOT NULL,
	[������] NVARCHAR(100) NOT NULL,
	[�������] NVARCHAR(20) NOT NULL,

	PRIMARY KEY ([��� ��볿])
);
GO

CREATE TABLE [��� �����������]
(
	[��� ���� �����������] DECIMAL(8, 0) NOT NULL,
	[������������] NVARCHAR(100) NOT NULL,

	PRIMARY KEY ([��� ���� �����������])
);
GO

CREATE TABLE [������� ������]
(
	[��� ������] DECIMAL(8, 0) NOT NULL,
	[�������] NVARCHAR(30) NOT NULL,
	[��'�] NVARCHAR(30) NOT NULL,
	[�� �������] NVARCHAR(30) NOT NULL,
	[������] NVARCHAR(100) NOT NULL,
	[�������] NVARCHAR(20) NOT NULL,
	[��� ��볿] DECIMAL(8, 0) NOT NULL,
	[�������� �����] MONEY NOT NULL,

	PRIMARY KEY ([��� ������])
);
GO

CREATE TABLE [��������]
(
	[����� ��������] INT IDENTITY(0, 1) NOT NULL,
	[���� ��������] DATETIME NOT NULL,
	[�������� ����] MONEY NOT NULL,
	[������� ������] INT NOT NULL,
	[��� ��볿] DECIMAL(8, 0) NOT NULL,
	[��� ���� �����������] DECIMAL(8, 0) NOT NULL,
	[��� ������] DECIMAL(8, 0) NOT NULL,

	PRIMARY KEY ([����� ��������])
);
GO
/* =============================================== */


ALTER TABLE [��������]
ADD CONSTRAINT FK_Գ볿_To_�������� FOREIGN KEY([��� ��볿]) REFERENCES [Գ볿] ([��� ��볿])
GO

ALTER TABLE [��������]
ADD CONSTRAINT FK_�����������_To_�������� FOREIGN KEY([��� ���� �����������]) REFERENCES [��� �����������] ([��� ���� �����������])
GO

ALTER TABLE [��������]
ADD CONSTRAINT FK_������_To_�������� FOREIGN KEY([��� ������]) REFERENCES [������� ������] ([��� ������])
GO

ALTER TABLE [������� ������]
ADD CONSTRAINT FK_������_To_Գ볿 FOREIGN KEY([��� ��볿]) REFERENCES [Գ볿] ([��� ��볿])
GO

/* =============================================== */

/*

DROP TABLE [��������]
DROP TABLE [��� �����������]
DROP TABLE [������� ������]
DROP TABLE [Գ볿]

*/
