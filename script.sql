USE [CarRental]
GO
/****** Object:  Table [dbo].[Availability]    Script Date: 19/02/2024 18:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Availability](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVehicule] [int] NOT NULL,
	[LocationPickup] [int] NOT NULL,
	[ReturnLocation] [int] NOT NULL,
 CONSTRAINT [PK_Availability] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 19/02/2024 18:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicule]    Script Date: 19/02/2024 18:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicensePlate] [varchar](6) NOT NULL,
	[Model] [int] NOT NULL,
	[Make] [varchar](50) NOT NULL,
	[Color] [nchar](10) NULL,
 CONSTRAINT [PK_Vehicule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Availability] ON 

INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (2, 1, 1, 3)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (3, 1, 3, 3)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (4, 1, 3, 1)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (5, 2, 1, 1)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (6, 2, 1, 3)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (7, 2, 3, 3)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (8, 2, 3, 1)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (9, 3, 1, 1)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (10, 3, 1, 3)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (11, 3, 3, 3)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (12, 3, 3, 1)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (13, 4, 2, 2)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (14, 4, 2, 5)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (15, 4, 5, 2)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (16, 4, 5, 5)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (17, 5, 2, 2)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (18, 5, 2, 5)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (19, 5, 5, 2)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (21, 5, 5, 5)
INSERT [dbo].[Availability] ([Id], [IdVehicule], [LocationPickup], [ReturnLocation]) VALUES (22, 6, 4, 4)
SET IDENTITY_INSERT [dbo].[Availability] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([Id], [Description]) VALUES (1, N'BARRANQUILLA')
INSERT [dbo].[Location] ([Id], [Description]) VALUES (2, N'BOGOTA')
INSERT [dbo].[Location] ([Id], [Description]) VALUES (3, N'CARTAGENA')
INSERT [dbo].[Location] ([Id], [Description]) VALUES (4, N'CUCUTA')
INSERT [dbo].[Location] ([Id], [Description]) VALUES (5, N'PEREIRA')
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehicule] ON 

INSERT [dbo].[Vehicule] ([Id], [LicensePlate], [Model], [Make], [Color]) VALUES (1, N'ABC123', 2020, N'KIA', N'BLACK     ')
INSERT [dbo].[Vehicule] ([Id], [LicensePlate], [Model], [Make], [Color]) VALUES (2, N'DEF234', 2021, N'FORD', N'BLUE      ')
INSERT [dbo].[Vehicule] ([Id], [LicensePlate], [Model], [Make], [Color]) VALUES (3, N'HIJ456', 2018, N'RENAULT', N'WHITE     ')
INSERT [dbo].[Vehicule] ([Id], [LicensePlate], [Model], [Make], [Color]) VALUES (4, N'KLM789', 2022, N'KIA', N'RED       ')
INSERT [dbo].[Vehicule] ([Id], [LicensePlate], [Model], [Make], [Color]) VALUES (5, N'POQ987', 2024, N'KIA', N'BLACK     ')
INSERT [dbo].[Vehicule] ([Id], [LicensePlate], [Model], [Make], [Color]) VALUES (6, N'XYZ546', 2023, N'FORD', N'YELLOW    ')
SET IDENTITY_INSERT [dbo].[Vehicule] OFF
GO
ALTER TABLE [dbo].[Availability]  WITH CHECK ADD FOREIGN KEY([IdVehicule])
REFERENCES [dbo].[Vehicule] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[GetVehiclesAvailable]    Script Date: 19/02/2024 18:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Juan Escorcia R.>
-- Create date: <19-02-2024>
-- Description:	<bring cars available according to location>
-- =============================================
CREATE PROCEDURE [dbo].[GetVehiclesAvailable](
	@LocationUser int,
	@LocPickup  int = 0)
AS
BEGIN

	SET NOCOUNT ON;

	  SELECT LicensePlate, Model, Make, Color, lp.Description AS LocationPickup,
				 STRING_AGG( lr.Description, ' / ') AS LocationReturn
		  FROM Vehicule v
		  INNER JOIN Availability a ON v.Id = a.IdVehicule
		  INNER JOIN Location lp ON lp.id = a.LocationPickup
		  INNER JOIN Location lr ON lr.Id = a.ReturnLocation
		  WHERE a.LocationPickup= @LocationUser or lr.id= CASE WHEN @LocPickup = 0
										THEN NULL
										ELSE @LocPickup
										END
			GROUP BY LicensePlate, Model, Make, Color,lp.Description;
END
GO
