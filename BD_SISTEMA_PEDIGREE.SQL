USE [SistemaSociedadPedigree2.0]
GO
/****** Object:  Table [dbo].[agrupacionesPerros]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agrupacionesPerros](
	[id_agrupacion] [int] IDENTITY(1,1) NOT NULL,
	[nombre_agrupacion] [varchar](50) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[calleNro] [int] NOT NULL,
	[id_barrio] [int] NOT NULL,
 CONSTRAINT [PK_agrupacionesPerros] PRIMARY KEY CLUSTERED 
(
	[id_agrupacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[barrios]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[barrios](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[cod_ciudad] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre_categoria] [varchar](50) NOT NULL,
	[descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_categorias] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoriasxConcursos]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoriasxConcursos](
	[id_categoria] [int] NOT NULL,
	[año] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[id_agrupacion] [int] NOT NULL,
	[dia_concurso] [int] NOT NULL,
 CONSTRAINT [PK_categoriasxConcursos] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC,
	[año] ASC,
	[mes] ASC,
	[id_agrupacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ciudades]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ciudades](
	[codCiudad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[codProvincia] [int] NOT NULL,
 CONSTRAINT [PK_Table_4] PRIMARY KEY CLUSTERED 
(
	[codCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[concursos]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[concursos](
	[año] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[id_agrupacion] [int] NOT NULL,
	[id_barrio] [int] NOT NULL,
	[dia] [int] NOT NULL,
 CONSTRAINT [PK_concursos] PRIMARY KEY CLUSTERED 
(
	[año] ASC,
	[mes] ASC,
	[id_agrupacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dueños]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dueños](
	[tipoDoc] [int] NOT NULL,
	[nroDoc] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dueños] PRIMARY KEY CLUSTERED 
(
	[tipoDoc] ASC,
	[nroDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dueñoxPerro]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dueñoxPerro](
	[codPerro] [int] NOT NULL,
	[fechaDesde] [datetime] NOT NULL,
	[tipoDoc] [int] NOT NULL,
	[nroDoc] [int] NOT NULL,
	[sexo] [int] NOT NULL,
	[fechaHasta] [datetime] NULL,
 CONSTRAINT [PK_dueñoxperro] PRIMARY KEY CLUSTERED 
(
	[codPerro] ASC,
	[fechaDesde] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturaInscripcionConcurso]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturaInscripcionConcurso](
	[nro_factura] [int] NOT NULL,
	[fecha_factura] [datetime] NOT NULL,
	[id_categoria] [int] NOT NULL,
	[codPerro] [int] NOT NULL,
	[precio] [int] NOT NULL,
 CONSTRAINT [PK_facturaInscripcionConcurso] PRIMARY KEY CLUSTERED 
(
	[nro_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[formasPagosFacturas]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formasPagosFacturas](
	[nro_factura] [int] NOT NULL,
	[id_forma_pago] [int] NOT NULL,
	[monto] [int] NOT NULL,
 CONSTRAINT [PK_formasPagosFacturas] PRIMARY KEY CLUSTERED 
(
	[nro_factura] ASC,
	[id_forma_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[padresxPerro]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[padresxPerro](
	[codPerro] [int] NOT NULL,
	[codPadre] [int] NOT NULL,
	[certeza] [int] NULL,
	[fechaApar] [datetime] NULL,
 CONSTRAINT [PK_padresxperro] PRIMARY KEY CLUSTERED 
(
	[codPerro] ASC,
	[codPadre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paises]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paises](
	[codPais] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_paises] PRIMARY KEY CLUSTERED 
(
	[codPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perros]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[sexo] [int] NOT NULL,
	[codMadre] [int] NULL,
	[codRaza] [int] NOT NULL,
 CONSTRAINT [PK_perros] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perrosxConcursoxCategorias]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perrosxConcursoxCategorias](
	[codPerro] [int] NOT NULL,
	[id_categoria] [int] NOT NULL,
	[año] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[id_agrupacion] [int] NOT NULL,
	[posicion] [int] NOT NULL,
 CONSTRAINT [PK_perrosxConcursoxCategorias] PRIMARY KEY CLUSTERED 
(
	[codPerro] ASC,
	[id_categoria] ASC,
	[año] ASC,
	[mes] ASC,
	[id_agrupacion] ASC,
	[posicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincias]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincias](
	[codProvincia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[codPais] [int] NOT NULL,
 CONSTRAINT [PK_Table_3] PRIMARY KEY CLUSTERED 
(
	[codProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prueba]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prueba](
	[nro] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[cod] [int] NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_prueba] PRIMARY KEY CLUSTERED 
(
	[nro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[razas]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[razas](
	[codRaza] [int] IDENTITY(1,1) NOT NULL,
	[nombreRaza] [varchar](50) NOT NULL,
	[codPais] [int] NOT NULL,
	[id_categoria] [int] NOT NULL,
 CONSTRAINT [PK_razas] PRIMARY KEY CLUSTERED 
(
	[codRaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sexos]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sexos](
	[id_sexo] [int] IDENTITY(1,1) NOT NULL,
	[nombre_sexo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sexos] PRIMARY KEY CLUSTERED 
(
	[id_sexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoDocumentos]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoDocumentos](
	[tipoDoc] [int] IDENTITY(1,1) NOT NULL,
	[nombreDoc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipoDocumentos] PRIMARY KEY CLUSTERED 
(
	[tipoDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiposFormasPago]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiposFormasPago](
	[id_forma_pago] [int] IDENTITY(1,1) NOT NULL,
	[nombre_forma_pago] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tiposFormasPago] PRIMARY KEY CLUSTERED 
(
	[id_forma_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiposPermisos]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiposPermisos](
	[id_tipo_permiso] [int] IDENTITY(1,1) NOT NULL,
	[nombre_permiso] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tiposPermisos] PRIMARY KEY CLUSTERED 
(
	[id_tipo_permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 4/6/2020 00:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre_usuario] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[permiso] [int] NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[agrupacionesPerros] ON 

INSERT [dbo].[agrupacionesPerros] ([id_agrupacion], [nombre_agrupacion], [calle], [calleNro], [id_barrio]) VALUES (1, N'Sociedad Pedigree', N'Nuñez', 321, 1)
INSERT [dbo].[agrupacionesPerros] ([id_agrupacion], [nombre_agrupacion], [calle], [calleNro], [id_barrio]) VALUES (2, N'Criadero La Pureza', N'Gral. Mosconi', 301, 2)
INSERT [dbo].[agrupacionesPerros] ([id_agrupacion], [nombre_agrupacion], [calle], [calleNro], [id_barrio]) VALUES (4, N'Cordoba Golden Retriever', N'Bernardo O''Higgins', 6377, 4)
SET IDENTITY_INSERT [dbo].[agrupacionesPerros] OFF
SET IDENTITY_INSERT [dbo].[barrios] ON 

INSERT [dbo].[barrios] ([id_barrio], [nombre], [cod_ciudad]) VALUES (1, N'Cafferata', 1)
INSERT [dbo].[barrios] ([id_barrio], [nombre], [cod_ciudad]) VALUES (2, N'Camara', 1)
INSERT [dbo].[barrios] ([id_barrio], [nombre], [cod_ciudad]) VALUES (3, N'Pellegrini', 1)
INSERT [dbo].[barrios] ([id_barrio], [nombre], [cod_ciudad]) VALUES (4, N'Alto Alberdi', 5)
SET IDENTITY_INSERT [dbo].[barrios] OFF
SET IDENTITY_INSERT [dbo].[categorias] ON 

INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (1, N'Grupo 1', N'Perros de pastor')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (22, N'Grupo 2', N'Perros tipo pinscher y schnauzer')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (23, N'Grupo 3', N'Perros terriers')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (24, N'Grupo 4', N'Perros nórdicos de trineo')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (25, N'Grupo 5', N'Perros tipo sabueso')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (26, N'Grupo 6', N'Perros de muestra continentales')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (27, N'Grupo 7', N'Perros cobradores de caza')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (28, N'Grupo 8', N'Perros de compañía')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (29, N'Grupo 9', N'Perros lebreles')
INSERT [dbo].[categorias] ([id_categoria], [nombre_categoria], [descripcion]) VALUES (30, N'Grupo 10', N'Perros dachshund')
SET IDENTITY_INSERT [dbo].[categorias] OFF
INSERT [dbo].[categoriasxConcursos] ([id_categoria], [año], [mes], [id_agrupacion], [dia_concurso]) VALUES (1, 2020, 12, 1, 5)
INSERT [dbo].[categoriasxConcursos] ([id_categoria], [año], [mes], [id_agrupacion], [dia_concurso]) VALUES (22, 2021, 3, 2, 12)
INSERT [dbo].[categoriasxConcursos] ([id_categoria], [año], [mes], [id_agrupacion], [dia_concurso]) VALUES (23, 2021, 3, 2, 12)
INSERT [dbo].[categoriasxConcursos] ([id_categoria], [año], [mes], [id_agrupacion], [dia_concurso]) VALUES (24, 2020, 8, 4, 18)
INSERT [dbo].[categoriasxConcursos] ([id_categoria], [año], [mes], [id_agrupacion], [dia_concurso]) VALUES (26, 2020, 12, 1, 5)
INSERT [dbo].[categoriasxConcursos] ([id_categoria], [año], [mes], [id_agrupacion], [dia_concurso]) VALUES (26, 2021, 3, 2, 12)
SET IDENTITY_INSERT [dbo].[ciudades] ON 

INSERT [dbo].[ciudades] ([codCiudad], [nombre], [codProvincia]) VALUES (1, N'Alta Gracia', 1)
INSERT [dbo].[ciudades] ([codCiudad], [nombre], [codProvincia]) VALUES (2, N'Ciudad Autonoma de Buenos Aires', 2)
INSERT [dbo].[ciudades] ([codCiudad], [nombre], [codProvincia]) VALUES (3, N'Londres', 4)
INSERT [dbo].[ciudades] ([codCiudad], [nombre], [codProvincia]) VALUES (4, N'Los Angeles', 5)
INSERT [dbo].[ciudades] ([codCiudad], [nombre], [codProvincia]) VALUES (5, N'Ciudad de Cordoba', 1)
SET IDENTITY_INSERT [dbo].[ciudades] OFF
INSERT [dbo].[concursos] ([año], [mes], [id_agrupacion], [id_barrio], [dia]) VALUES (2020, 8, 4, 4, 18)
INSERT [dbo].[concursos] ([año], [mes], [id_agrupacion], [id_barrio], [dia]) VALUES (2020, 12, 1, 1, 5)
INSERT [dbo].[concursos] ([año], [mes], [id_agrupacion], [id_barrio], [dia]) VALUES (2021, 2, 2, 4, 12)
INSERT [dbo].[concursos] ([año], [mes], [id_agrupacion], [id_barrio], [dia]) VALUES (2021, 3, 2, 3, 21)
INSERT [dbo].[dueños] ([tipoDoc], [nroDoc], [nombre], [apellido]) VALUES (1, 16547311, N'Andres', N'Puig')
INSERT [dbo].[dueños] ([tipoDoc], [nroDoc], [nombre], [apellido]) VALUES (1, 20789654, N'Marcelo', N'Lombardi')
INSERT [dbo].[dueños] ([tipoDoc], [nroDoc], [nombre], [apellido]) VALUES (1, 31546578, N'Gabriela', N'Ruiz-Real')
INSERT [dbo].[dueños] ([tipoDoc], [nroDoc], [nombre], [apellido]) VALUES (2, 15258147, N'Bob', N'Dylan')
INSERT [dbo].[dueñoxPerro] ([codPerro], [fechaDesde], [tipoDoc], [nroDoc], [sexo], [fechaHasta]) VALUES (1, CAST(N'2015-01-19T00:00:00.000' AS DateTime), 1, 16547311, 1, NULL)
INSERT [dbo].[dueñoxPerro] ([codPerro], [fechaDesde], [tipoDoc], [nroDoc], [sexo], [fechaHasta]) VALUES (2, CAST(N'2016-08-22T00:00:00.000' AS DateTime), 1, 20789654, 1, NULL)
INSERT [dbo].[facturaInscripcionConcurso] ([nro_factura], [fecha_factura], [id_categoria], [codPerro], [precio]) VALUES (1, CAST(N'2020-06-03T00:00:00.000' AS DateTime), 28, 5, 1040)
INSERT [dbo].[facturaInscripcionConcurso] ([nro_factura], [fecha_factura], [id_categoria], [codPerro], [precio]) VALUES (2, CAST(N'2020-06-03T00:00:00.000' AS DateTime), 26, 4, 1800)
INSERT [dbo].[facturaInscripcionConcurso] ([nro_factura], [fecha_factura], [id_categoria], [codPerro], [precio]) VALUES (3, CAST(N'2020-06-03T00:00:00.000' AS DateTime), 26, 2, 1300)
INSERT [dbo].[facturaInscripcionConcurso] ([nro_factura], [fecha_factura], [id_categoria], [codPerro], [precio]) VALUES (4, CAST(N'2020-06-03T00:00:00.000' AS DateTime), 23, 5, 8000)
INSERT [dbo].[facturaInscripcionConcurso] ([nro_factura], [fecha_factura], [id_categoria], [codPerro], [precio]) VALUES (5, CAST(N'2020-06-03T00:00:00.000' AS DateTime), 23, 1, 800)
INSERT [dbo].[facturaInscripcionConcurso] ([nro_factura], [fecha_factura], [id_categoria], [codPerro], [precio]) VALUES (6, CAST(N'2020-06-04T00:00:00.000' AS DateTime), 22, 3, 800)
INSERT [dbo].[facturaInscripcionConcurso] ([nro_factura], [fecha_factura], [id_categoria], [codPerro], [precio]) VALUES (7, CAST(N'2020-06-04T00:00:00.000' AS DateTime), 25, 3, 1000)
INSERT [dbo].[facturaInscripcionConcurso] ([nro_factura], [fecha_factura], [id_categoria], [codPerro], [precio]) VALUES (8, CAST(N'2020-06-04T00:00:00.000' AS DateTime), 30, 5, 900)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (1, 1, 500)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (1, 2, 540)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (2, 1, 1000)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (2, 2, 800)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (3, 1, 500)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (3, 2, 800)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (4, 1, 8000)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (5, 1, 800)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (6, 2, 800)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (7, 3, 800)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (7, 4, 200)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (8, 1, 100)
INSERT [dbo].[formasPagosFacturas] ([nro_factura], [id_forma_pago], [monto]) VALUES (8, 5, 800)
INSERT [dbo].[padresxPerro] ([codPerro], [codPadre], [certeza], [fechaApar]) VALUES (3, 1, 100, CAST(N'2020-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[padresxPerro] ([codPerro], [codPadre], [certeza], [fechaApar]) VALUES (3, 2, NULL, CAST(N'2020-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[padresxPerro] ([codPerro], [codPadre], [certeza], [fechaApar]) VALUES (4, 1, 100, CAST(N'2020-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[padresxPerro] ([codPerro], [codPadre], [certeza], [fechaApar]) VALUES (4, 2, NULL, CAST(N'2020-05-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[paises] ON 

INSERT [dbo].[paises] ([codPais], [nombre]) VALUES (1, N'Argentina')
INSERT [dbo].[paises] ([codPais], [nombre]) VALUES (2, N'Inglaterra')
INSERT [dbo].[paises] ([codPais], [nombre]) VALUES (3, N'Brasil')
INSERT [dbo].[paises] ([codPais], [nombre]) VALUES (4, N'Estados Unidos')
INSERT [dbo].[paises] ([codPais], [nombre]) VALUES (5, N'Alemania')
INSERT [dbo].[paises] ([codPais], [nombre]) VALUES (6, N'nigeria')
SET IDENTITY_INSERT [dbo].[paises] OFF
SET IDENTITY_INSERT [dbo].[perros] ON 

INSERT [dbo].[perros] ([codigo], [nombre], [sexo], [codMadre], [codRaza]) VALUES (1, N'Firulais', 1, NULL, 1)
INSERT [dbo].[perros] ([codigo], [nombre], [sexo], [codMadre], [codRaza]) VALUES (2, N'Berta', 2, NULL, 1)
INSERT [dbo].[perros] ([codigo], [nombre], [sexo], [codMadre], [codRaza]) VALUES (3, N'Pirata', 1, 2, 1)
INSERT [dbo].[perros] ([codigo], [nombre], [sexo], [codMadre], [codRaza]) VALUES (4, N'Lola', 2, 2, 1)
INSERT [dbo].[perros] ([codigo], [nombre], [sexo], [codMadre], [codRaza]) VALUES (5, N'Frost', 1, 2, 1)
SET IDENTITY_INSERT [dbo].[perros] OFF
SET IDENTITY_INSERT [dbo].[provincias] ON 

INSERT [dbo].[provincias] ([codProvincia], [nombre], [codPais]) VALUES (1, N'Cordoba', 1)
INSERT [dbo].[provincias] ([codProvincia], [nombre], [codPais]) VALUES (2, N'Buenos Aires', 1)
INSERT [dbo].[provincias] ([codProvincia], [nombre], [codPais]) VALUES (3, N'Tucuman', 1)
INSERT [dbo].[provincias] ([codProvincia], [nombre], [codPais]) VALUES (4, N'Greater London', 2)
INSERT [dbo].[provincias] ([codProvincia], [nombre], [codPais]) VALUES (5, N'California', 4)
SET IDENTITY_INSERT [dbo].[provincias] OFF
INSERT [dbo].[prueba] ([nro], [fecha], [cod], [precio]) VALUES (3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[razas] ON 

INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (1, N'Border Collie', 2, 1)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (2, N'Pastor Aleman', 5, 1)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (3, N'Dogo argentino', 1, 22)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (4, N'Bull terrier', 2, 23)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (6, N'Perro pastor autraliano', 4, 1)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (9, N'Dobermann', 4, 22)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (10, N'Bóxer', 4, 22)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (11, N'Rotweiler', 4, 22)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (12, N'Fila brasileño', 3, 22)
INSERT [dbo].[razas] ([codRaza], [nombreRaza], [codPais], [id_categoria]) VALUES (13, N'Terrier brasileño', 3, 23)
SET IDENTITY_INSERT [dbo].[razas] OFF
SET IDENTITY_INSERT [dbo].[sexos] ON 

INSERT [dbo].[sexos] ([id_sexo], [nombre_sexo]) VALUES (1, N'Macho')
INSERT [dbo].[sexos] ([id_sexo], [nombre_sexo]) VALUES (2, N'Hembra')
SET IDENTITY_INSERT [dbo].[sexos] OFF
SET IDENTITY_INSERT [dbo].[tipoDocumentos] ON 

INSERT [dbo].[tipoDocumentos] ([tipoDoc], [nombreDoc]) VALUES (1, N'DNI')
INSERT [dbo].[tipoDocumentos] ([tipoDoc], [nombreDoc]) VALUES (2, N'Pasaporte')
INSERT [dbo].[tipoDocumentos] ([tipoDoc], [nombreDoc]) VALUES (3, N'Libreta Civica')
SET IDENTITY_INSERT [dbo].[tipoDocumentos] OFF
SET IDENTITY_INSERT [dbo].[tiposFormasPago] ON 

INSERT [dbo].[tiposFormasPago] ([id_forma_pago], [nombre_forma_pago]) VALUES (1, N'Efectivo')
INSERT [dbo].[tiposFormasPago] ([id_forma_pago], [nombre_forma_pago]) VALUES (2, N'Debito')
INSERT [dbo].[tiposFormasPago] ([id_forma_pago], [nombre_forma_pago]) VALUES (3, N'Cheque')
INSERT [dbo].[tiposFormasPago] ([id_forma_pago], [nombre_forma_pago]) VALUES (4, N'Tarjeta de Credito')
INSERT [dbo].[tiposFormasPago] ([id_forma_pago], [nombre_forma_pago]) VALUES (5, N'Transferencia Bancaria')
SET IDENTITY_INSERT [dbo].[tiposFormasPago] OFF
SET IDENTITY_INSERT [dbo].[tiposPermisos] ON 

INSERT [dbo].[tiposPermisos] ([id_tipo_permiso], [nombre_permiso]) VALUES (1, N'Administrador')
INSERT [dbo].[tiposPermisos] ([id_tipo_permiso], [nombre_permiso]) VALUES (2, N'Empleado')
INSERT [dbo].[tiposPermisos] ([id_tipo_permiso], [nombre_permiso]) VALUES (3, N'Encargado')
INSERT [dbo].[tiposPermisos] ([id_tipo_permiso], [nombre_permiso]) VALUES (4, N'Jefe')
SET IDENTITY_INSERT [dbo].[tiposPermisos] OFF
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id_usuario], [nombre_usuario], [password], [permiso]) VALUES (1, N'admin', N'111', 1)
INSERT [dbo].[usuarios] ([id_usuario], [nombre_usuario], [password], [permiso]) VALUES (16, N'santiago', N'19', 2)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
ALTER TABLE [dbo].[agrupacionesPerros]  WITH CHECK ADD  CONSTRAINT [FK_agrupacionesPerros_barrios] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[agrupacionesPerros] CHECK CONSTRAINT [FK_agrupacionesPerros_barrios]
GO
ALTER TABLE [dbo].[barrios]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_Table_4] FOREIGN KEY([cod_ciudad])
REFERENCES [dbo].[ciudades] ([codCiudad])
GO
ALTER TABLE [dbo].[barrios] CHECK CONSTRAINT [FK_Table_1_Table_4]
GO
ALTER TABLE [dbo].[categorias]  WITH CHECK ADD  CONSTRAINT [FK_categorias_categorias] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[categorias] CHECK CONSTRAINT [FK_categorias_categorias]
GO
ALTER TABLE [dbo].[categoriasxConcursos]  WITH CHECK ADD  CONSTRAINT [FK_categoriasxConcursos_categorias] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[categoriasxConcursos] CHECK CONSTRAINT [FK_categoriasxConcursos_categorias]
GO
ALTER TABLE [dbo].[categoriasxConcursos]  WITH CHECK ADD  CONSTRAINT [FK_categoriasxConcursos_concursos] FOREIGN KEY([año], [mes], [id_agrupacion])
REFERENCES [dbo].[concursos] ([año], [mes], [id_agrupacion])
GO
ALTER TABLE [dbo].[categoriasxConcursos] CHECK CONSTRAINT [FK_categoriasxConcursos_concursos]
GO
ALTER TABLE [dbo].[ciudades]  WITH CHECK ADD  CONSTRAINT [FK_Table_4_Table_3] FOREIGN KEY([codProvincia])
REFERENCES [dbo].[provincias] ([codProvincia])
GO
ALTER TABLE [dbo].[ciudades] CHECK CONSTRAINT [FK_Table_4_Table_3]
GO
ALTER TABLE [dbo].[concursos]  WITH CHECK ADD  CONSTRAINT [FK_concursos_agrupacionesPerros] FOREIGN KEY([id_agrupacion])
REFERENCES [dbo].[agrupacionesPerros] ([id_agrupacion])
GO
ALTER TABLE [dbo].[concursos] CHECK CONSTRAINT [FK_concursos_agrupacionesPerros]
GO
ALTER TABLE [dbo].[concursos]  WITH CHECK ADD  CONSTRAINT [FK_concursos_barrios] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[concursos] CHECK CONSTRAINT [FK_concursos_barrios]
GO
ALTER TABLE [dbo].[dueños]  WITH CHECK ADD  CONSTRAINT [FK_dueños_tipoDocumentos] FOREIGN KEY([tipoDoc])
REFERENCES [dbo].[tipoDocumentos] ([tipoDoc])
GO
ALTER TABLE [dbo].[dueños] CHECK CONSTRAINT [FK_dueños_tipoDocumentos]
GO
ALTER TABLE [dbo].[dueñoxPerro]  WITH CHECK ADD  CONSTRAINT [FK_dueñoxPerro_dueños] FOREIGN KEY([tipoDoc], [nroDoc])
REFERENCES [dbo].[dueños] ([tipoDoc], [nroDoc])
GO
ALTER TABLE [dbo].[dueñoxPerro] CHECK CONSTRAINT [FK_dueñoxPerro_dueños]
GO
ALTER TABLE [dbo].[dueñoxPerro]  WITH CHECK ADD  CONSTRAINT [FK_dueñoxPerro_perros] FOREIGN KEY([codPerro])
REFERENCES [dbo].[perros] ([codigo])
GO
ALTER TABLE [dbo].[dueñoxPerro] CHECK CONSTRAINT [FK_dueñoxPerro_perros]
GO
ALTER TABLE [dbo].[dueñoxPerro]  WITH CHECK ADD  CONSTRAINT [FK_dueñoxPerro_sexos] FOREIGN KEY([sexo])
REFERENCES [dbo].[sexos] ([id_sexo])
GO
ALTER TABLE [dbo].[dueñoxPerro] CHECK CONSTRAINT [FK_dueñoxPerro_sexos]
GO
ALTER TABLE [dbo].[facturaInscripcionConcurso]  WITH CHECK ADD  CONSTRAINT [FK_facturaInscripcionConcurso_categorias] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[facturaInscripcionConcurso] CHECK CONSTRAINT [FK_facturaInscripcionConcurso_categorias]
GO
ALTER TABLE [dbo].[facturaInscripcionConcurso]  WITH CHECK ADD  CONSTRAINT [FK_facturaInscripcionConcurso_perros] FOREIGN KEY([codPerro])
REFERENCES [dbo].[perros] ([codigo])
GO
ALTER TABLE [dbo].[facturaInscripcionConcurso] CHECK CONSTRAINT [FK_facturaInscripcionConcurso_perros]
GO
ALTER TABLE [dbo].[formasPagosFacturas]  WITH CHECK ADD  CONSTRAINT [FK_formasPagosFacturas_facturaInscripcionConcurso] FOREIGN KEY([nro_factura])
REFERENCES [dbo].[facturaInscripcionConcurso] ([nro_factura])
GO
ALTER TABLE [dbo].[formasPagosFacturas] CHECK CONSTRAINT [FK_formasPagosFacturas_facturaInscripcionConcurso]
GO
ALTER TABLE [dbo].[formasPagosFacturas]  WITH CHECK ADD  CONSTRAINT [FK_formasPagosFacturas_tiposFormasPago] FOREIGN KEY([id_forma_pago])
REFERENCES [dbo].[tiposFormasPago] ([id_forma_pago])
GO
ALTER TABLE [dbo].[formasPagosFacturas] CHECK CONSTRAINT [FK_formasPagosFacturas_tiposFormasPago]
GO
ALTER TABLE [dbo].[padresxPerro]  WITH CHECK ADD  CONSTRAINT [FK_padresxperro_padresxperro] FOREIGN KEY([codPerro], [codPadre])
REFERENCES [dbo].[padresxPerro] ([codPerro], [codPadre])
GO
ALTER TABLE [dbo].[padresxPerro] CHECK CONSTRAINT [FK_padresxperro_padresxperro]
GO
ALTER TABLE [dbo].[perros]  WITH CHECK ADD  CONSTRAINT [FK_perros_perros] FOREIGN KEY([codMadre])
REFERENCES [dbo].[perros] ([codigo])
GO
ALTER TABLE [dbo].[perros] CHECK CONSTRAINT [FK_perros_perros]
GO
ALTER TABLE [dbo].[perros]  WITH CHECK ADD  CONSTRAINT [FK_perros_razas] FOREIGN KEY([codRaza])
REFERENCES [dbo].[razas] ([codRaza])
GO
ALTER TABLE [dbo].[perros] CHECK CONSTRAINT [FK_perros_razas]
GO
ALTER TABLE [dbo].[perrosxConcursoxCategorias]  WITH CHECK ADD  CONSTRAINT [FK_perrosxConcursoxCategorias_categorias] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[perrosxConcursoxCategorias] CHECK CONSTRAINT [FK_perrosxConcursoxCategorias_categorias]
GO
ALTER TABLE [dbo].[perrosxConcursoxCategorias]  WITH CHECK ADD  CONSTRAINT [FK_perrosxConcursoxCategorias_concursos] FOREIGN KEY([año], [mes], [id_agrupacion])
REFERENCES [dbo].[concursos] ([año], [mes], [id_agrupacion])
GO
ALTER TABLE [dbo].[perrosxConcursoxCategorias] CHECK CONSTRAINT [FK_perrosxConcursoxCategorias_concursos]
GO
ALTER TABLE [dbo].[perrosxConcursoxCategorias]  WITH CHECK ADD  CONSTRAINT [FK_perrosxConcursoxCategorias_perros] FOREIGN KEY([codPerro])
REFERENCES [dbo].[perros] ([codigo])
GO
ALTER TABLE [dbo].[perrosxConcursoxCategorias] CHECK CONSTRAINT [FK_perrosxConcursoxCategorias_perros]
GO
ALTER TABLE [dbo].[provincias]  WITH CHECK ADD  CONSTRAINT [FK_Table_3_paises] FOREIGN KEY([codPais])
REFERENCES [dbo].[paises] ([codPais])
GO
ALTER TABLE [dbo].[provincias] CHECK CONSTRAINT [FK_Table_3_paises]
GO
ALTER TABLE [dbo].[razas]  WITH CHECK ADD  CONSTRAINT [FK_razas_categorias] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[razas] CHECK CONSTRAINT [FK_razas_categorias]
GO
ALTER TABLE [dbo].[razas]  WITH CHECK ADD  CONSTRAINT [FK_razas_paises] FOREIGN KEY([codPais])
REFERENCES [dbo].[paises] ([codPais])
GO
ALTER TABLE [dbo].[razas] CHECK CONSTRAINT [FK_razas_paises]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_tiposPermisos] FOREIGN KEY([permiso])
REFERENCES [dbo].[tiposPermisos] ([id_tipo_permiso])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_tiposPermisos]
GO