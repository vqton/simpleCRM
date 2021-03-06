USE [master]
GO

/****** Object:  Database [dbSimpleCRM]    Script Date: 11/26/2021 6:48:17 AM ******/
CREATE DATABASE [dbSimpleCRM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbSimpleCRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbSimpleCRM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbSimpleCRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbSimpleCRM_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbSimpleCRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [dbSimpleCRM] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET ARITHABORT OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [dbSimpleCRM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [dbSimpleCRM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET  DISABLE_BROKER 
GO

ALTER DATABASE [dbSimpleCRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [dbSimpleCRM] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET RECOVERY FULL 
GO

ALTER DATABASE [dbSimpleCRM] SET  MULTI_USER 
GO

ALTER DATABASE [dbSimpleCRM] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [dbSimpleCRM] SET DB_CHAINING OFF 
GO

ALTER DATABASE [dbSimpleCRM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [dbSimpleCRM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [dbSimpleCRM] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [dbSimpleCRM] SET QUERY_STORE = OFF
GO

ALTER DATABASE [dbSimpleCRM] SET  READ_WRITE 
GO

