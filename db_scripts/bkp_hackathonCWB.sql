USE [master]
GO
/****** Object:  Database [hackathoncwb]    Script Date: 28/11/2016 11:54:31 ******/
CREATE DATABASE [hackathoncwb]
GO
ALTER DATABASE [hackathoncwb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hackathoncwb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hackathoncwb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hackathoncwb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hackathoncwb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hackathoncwb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hackathoncwb] SET ARITHABORT OFF 
GO
ALTER DATABASE [hackathoncwb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hackathoncwb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hackathoncwb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hackathoncwb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hackathoncwb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hackathoncwb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hackathoncwb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hackathoncwb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hackathoncwb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hackathoncwb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hackathoncwb] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [hackathoncwb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hackathoncwb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [hackathoncwb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hackathoncwb] SET  MULTI_USER 
GO
ALTER DATABASE [hackathoncwb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hackathoncwb] SET QUERY_STORE = ON
GO
ALTER DATABASE [hackathoncwb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [hackathoncwb]
GO
/****** Object:  User [pericles]    Script Date: 28/11/2016 11:54:31 ******/
CREATE USER [pericles] FOR LOGIN [pericles] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [eduguedes]    Script Date: 28/11/2016 11:54:32 ******/
CREATE USER [eduguedes] FOR LOGIN [eduguedes] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [app]    Script Date: 28/11/2016 11:54:32 ******/
CREATE USER [app] FOR LOGIN [app] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [pericles]
GO
ALTER ROLE [db_owner] ADD MEMBER [eduguedes]
GO
ALTER ROLE [db_owner] ADD MEMBER [app]
GO
/****** Object:  Table [dbo].[ARQUIVO]    Script Date: 28/11/2016 11:54:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARQUIVO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[ID_Professor] [int] NOT NULL,
	[Caminho] [varchar](150) NOT NULL,
	[PastaProfessor] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[PROFESSOR]    Script Date: 28/11/2016 11:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFESSOR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](40) NOT NULL,
	[Sobrenome] [varchar](50) NOT NULL,
	[Endereco] [varchar](50) NOT NULL,
	[Estado] [varchar](2) NOT NULL,
	[Cidade] [varchar](40) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[AreaAtuacao] [varchar](40) NOT NULL,
	[Nivel] [varchar](20) NOT NULL,
	[Senha] [varchar](20) NOT NULL,
	[FaleUmPoucoSobreVoce] [varchar](255) NOT NULL,
	[Numero] [varchar](10) NULL,
	[Complemento] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[ARQUIVO]  WITH CHECK ADD FOREIGN KEY([ID_Professor])
REFERENCES [dbo].[PROFESSOR] ([ID])
GO
USE [master]
GO
ALTER DATABASE [hackathoncwb] SET  READ_WRITE 
GO
