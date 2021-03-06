USE [EMPRESA]
GO
/****** Object:  Table [dbo].[EMPRENDIMIENTO]    Script Date: 10/8/2017 13:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRENDIMIENTO](
	[Emp_id] [char](10) NOT NULL,
	[Emp_Titulo] [char](20) NULL,
	[Emp_Descripcion] [char](50) NULL,
	[Emp_Costo] [decimal](20, 2) NULL,
	[Emp_Tiempo] [numeric](10, 0) NULL,
 CONSTRAINT [Emprendimeinto_PK] PRIMARY KEY CLUSTERED 
(
	[Emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EVALUACION]    Script Date: 10/8/2017 13:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVALUACION](
	[Puntaje_ev] [numeric](3, 0) NOT NULL,
	[Justificacion_ev] [varchar](20) NOT NULL,
	[FechaRealizacion_ev] [date] NOT NULL,
	[Estado_ev] [bit] NOT NULL,
	[Emp_id] [char](10) NOT NULL,
	[EV_CEDULA] [char](10) NOT NULL,
	[EV_EMAIL] [char](20) NOT NULL,
 CONSTRAINT [Evaluacion_Pk] PRIMARY KEY CLUSTERED 
(
	[Emp_id] ASC,
	[EV_CEDULA] ASC,
	[FechaRealizacion_ev] ASC,
	[EV_EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EVALUADOR]    Script Date: 10/8/2017 13:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVALUADOR](
	[EV_CEDULA] [char](10) NOT NULL,
	[EV_NOMBRE] [varchar](10) NOT NULL,
	[EV_EMAIL] [char](20) NOT NULL,
	[EV_TELEFONO] [varchar](10) NOT NULL,
	[EV_CALIFICACION] [numeric](12, 1) NOT NULL,
 CONSTRAINT [PK_EVALUADOR] PRIMARY KEY CLUSTERED 
(
	[EV_CEDULA] ASC,
	[EV_EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INTEGRANTE]    Script Date: 10/8/2017 13:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTEGRANTE](
	[Int_Cedula] [char](7) NOT NULL,
	[Int_Nombre] [char](20) NULL,
	[Int_Email] [varchar](20) NULL,
	[Emp_id] [char](10) NULL,
	[Us_Email] [char](20) NULL,
 CONSTRAINT [Integrante_PK] PRIMARY KEY CLUSTERED 
(
	[Int_Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 10/8/2017 13:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[US_EMAIL] [char](20) NOT NULL,
	[US_CLAVE] [varchar](10) NOT NULL,
	[US_TIPO] [varchar](15) NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[US_EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[EMPRENDIMIENTO] ([Emp_id], [Emp_Titulo], [Emp_Descripcion], [Emp_Costo], [Emp_Tiempo]) VALUES (N'123       ', N'Reparar             ', N' Rotura de placa                                  ', CAST(12000.00 AS Decimal(20, 2)), CAST(20 AS Numeric(10, 0)))
INSERT [dbo].[EMPRENDIMIENTO] ([Emp_id], [Emp_Titulo], [Emp_Descripcion], [Emp_Costo], [Emp_Tiempo]) VALUES (N'124       ', N'Actualizar          ', N'Programas                                         ', CAST(25515.00 AS Decimal(20, 2)), CAST(10 AS Numeric(10, 0)))
INSERT [dbo].[EMPRENDIMIENTO] ([Emp_id], [Emp_Titulo], [Emp_Descripcion], [Emp_Costo], [Emp_Tiempo]) VALUES (N'9854      ', N'Vender              ', N'Celulares a la venta                              ', CAST(10000.00 AS Decimal(20, 2)), CAST(30 AS Numeric(10, 0)))
INSERT [dbo].[EVALUACION] ([Puntaje_ev], [Justificacion_ev], [FechaRealizacion_ev], [Estado_ev], [Emp_id], [EV_CEDULA], [EV_EMAIL]) VALUES (CAST(0 AS Numeric(3, 0)), N'', CAST(N'2017-08-10' AS Date), 0, N'123       ', N'78891448  ', N'carlos@hotmail.com  ')
INSERT [dbo].[EVALUADOR] ([EV_CEDULA], [EV_NOMBRE], [EV_EMAIL], [EV_TELEFONO], [EV_CALIFICACION]) VALUES (N'57545124  ', N'martin', N'martin@hotmail.com  ', N'25648433', CAST(2.0 AS Numeric(12, 1)))
INSERT [dbo].[EVALUADOR] ([EV_CEDULA], [EV_NOMBRE], [EV_EMAIL], [EV_TELEFONO], [EV_CALIFICACION]) VALUES (N'78891448  ', N'carlos', N'carlos@hotmail.com  ', N'23543125', CAST(3.0 AS Numeric(12, 1)))
INSERT [dbo].[USUARIO] ([US_EMAIL], [US_CLAVE], [US_TIPO]) VALUES (N'andres@hotmail.com  ', N'1234', N'administrador')
INSERT [dbo].[USUARIO] ([US_EMAIL], [US_CLAVE], [US_TIPO]) VALUES (N'carla@hotmail.com   ', N'carlita', N'postulante')
INSERT [dbo].[USUARIO] ([US_EMAIL], [US_CLAVE], [US_TIPO]) VALUES (N'carlos@hotmail.com  ', N'carlitos', N'evaluador')
INSERT [dbo].[USUARIO] ([US_EMAIL], [US_CLAVE], [US_TIPO]) VALUES (N'fabi@hotmail.com    ', N'12345', N'postulante')
INSERT [dbo].[USUARIO] ([US_EMAIL], [US_CLAVE], [US_TIPO]) VALUES (N'martin@hotmail.com  ', N'martincito', N'evaluador')
INSERT [dbo].[USUARIO] ([US_EMAIL], [US_CLAVE], [US_TIPO]) VALUES (N'sole@hotmail.com    ', N'98', N'postulante')
INSERT [dbo].[USUARIO] ([US_EMAIL], [US_CLAVE], [US_TIPO]) VALUES (N'vale@hotmail.com    ', N'7698', N'postulante')
ALTER TABLE [dbo].[EVALUACION]  WITH CHECK ADD  CONSTRAINT [Evaluacion_Fk] FOREIGN KEY([Emp_id])
REFERENCES [dbo].[EMPRENDIMIENTO] ([Emp_id])
GO
ALTER TABLE [dbo].[EVALUACION] CHECK CONSTRAINT [Evaluacion_Fk]
GO
ALTER TABLE [dbo].[EVALUACION]  WITH CHECK ADD  CONSTRAINT [Evaluacion_Fk2] FOREIGN KEY([EV_CEDULA], [EV_EMAIL])
REFERENCES [dbo].[EVALUADOR] ([EV_CEDULA], [EV_EMAIL])
GO
ALTER TABLE [dbo].[EVALUACION] CHECK CONSTRAINT [Evaluacion_Fk2]
GO
ALTER TABLE [dbo].[EVALUADOR]  WITH CHECK ADD  CONSTRAINT [FK_EVALUADOR_USUARIO] FOREIGN KEY([EV_EMAIL])
REFERENCES [dbo].[USUARIO] ([US_EMAIL])
GO
ALTER TABLE [dbo].[EVALUADOR] CHECK CONSTRAINT [FK_EVALUADOR_USUARIO]
GO
ALTER TABLE [dbo].[INTEGRANTE]  WITH CHECK ADD  CONSTRAINT [Integrante_FK] FOREIGN KEY([Emp_id])
REFERENCES [dbo].[EMPRENDIMIENTO] ([Emp_id])
GO
ALTER TABLE [dbo].[INTEGRANTE] CHECK CONSTRAINT [Integrante_FK]
GO
ALTER TABLE [dbo].[INTEGRANTE]  WITH CHECK ADD  CONSTRAINT [Integrante_FK_1] FOREIGN KEY([Us_Email])
REFERENCES [dbo].[USUARIO] ([US_EMAIL])
GO
ALTER TABLE [dbo].[INTEGRANTE] CHECK CONSTRAINT [Integrante_FK_1]
GO
