USE [test]
GO
/****** Object:  Table [dbo].[ARAPJDE]    Script Date: 6/1/2024 10:29:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARAPJDE](
	[ContractNo] [nvarchar](10) NOT NULL,
	[ACCode] [nvarchar](20) NULL,
	[Description] [nvarchar](50) NULL,
	[SupplierCode] [nvarchar](50) NULL,
	[SupplierName] [nvarchar](50) NULL,
	[DueDate] [datetime] NULL,
	[AmountInCtrm] [money] NOT NULL,
	[AmountInJde] [money] NOT NULL,
	[PDRate] [float] NULL,
	[SFAcctTitle] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 6/1/2024 10:29:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BizDate] [datetime] NULL,
	[CpMasterId] [nvarchar](50) NULL,
	[CpName] [nvarchar](50) NULL,
	[LimitCUsd] [money] NULL,
	[PdRate] [float] NULL,
	[InsuranceRate] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'P0798', N'6211189.1', N'A/R Trade-FLAT', N'3003', N'CHINA Global', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 0.0000, 142088.1900, NULL, N'CHINA Global')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'P0805', N'6211189.1', N'A/R Trade-FLAT', N'3003', N'CHINA Global', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 0.0000, 30596.3300, NULL, N'CHINA Global')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'P0806', N'6211189.1', N'A/R Trade-FLAT', N'3003', N'CHINA Global', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 0.0000, 26015.0900, NULL, N'CHINA Global')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'P0802', N'6211189.1', N'A/R Trade-FLAT', N'3003', N'CHINA Global', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 0.0000, 95599.5000, NULL, N'CHINA Global')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'S1169', N'6211189.1', N'A/R Trade-FLAT', N'12356', N'Steel Limited', CAST(N'2023-12-20T00:00:00.000' AS DateTime), 1205113.3500, 12051.3500, 0.257, N'Steel Limited Test')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'S1168', N'6211189.1', N'A/R Trade-FLAT', N'12356', N'Steel Limited', CAST(N'2023-12-20T00:00:00.000' AS DateTime), 928527.2500, 9227.2500, 0.257, N'Steel Limited Test')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'S1160', N'6211189.1', N'A/R Trade-FLAT', N'12356', N'Steel Limited', CAST(N'2023-12-20T00:00:00.000' AS DateTime), 1002061.9000, 12061.9000, 0.257, N'Steel Limited Test')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'S1269', N'6211189.1', N'A/R Trade-FLAT', N'12356', N'Steel Limited', CAST(N'2023-12-20T00:00:00.000' AS DateTime), 1032969.0100, 10369.0100, 0.257, N'Steel Limited Test')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'S1369', N'6211189.1', N'A/R Trade-FLAT', N'12356', N'Steel Limited', CAST(N'2023-12-20T00:00:00.000' AS DateTime), 946199.1800, 9469.1800, 0.257, N'Steel Limited Test')
INSERT [dbo].[ARAPJDE] ([ContractNo], [ACCode], [Description], [SupplierCode], [SupplierName], [DueDate], [AmountInCtrm], [AmountInJde], [PDRate], [SFAcctTitle]) VALUES (N'S4169', N'6211189.1', N'A/R Trade-FLAT', N'12356', N'Steel Limited', CAST(N'2023-12-20T00:00:00.000' AS DateTime), 760206.1500, 7606.1500, 0.257, N'Steel Limited Test')
GO
SET IDENTITY_INSERT [dbo].[Insurance] ON 

INSERT [dbo].[Insurance] ([Id], [BizDate], [CpMasterId], [CpName], [LimitCUsd], [PdRate], [InsuranceRate]) VALUES (4, CAST(N'2023-11-30T00:00:00.000' AS DateTime), N'CP00002', N'CRM Racking Test', 21286.0000, 0.25, 0.9)
INSERT [dbo].[Insurance] ([Id], [BizDate], [CpMasterId], [CpName], [LimitCUsd], [PdRate], [InsuranceRate]) VALUES (5, CAST(N'2023-11-30T00:00:00.000' AS DateTime), N'CP00002', N'CHINA Global  ', 53215.0000, 0.36, 0.9)
SET IDENTITY_INSERT [dbo].[Insurance] OFF
GO
ALTER TABLE [dbo].[ARAPJDE] ADD  CONSTRAINT [DF_ARAPJDE_AmountInCtrm]  DEFAULT ((0)) FOR [AmountInCtrm]
GO
ALTER TABLE [dbo].[ARAPJDE] ADD  CONSTRAINT [DF_ARAPJDE_AmountInJde]  DEFAULT ((0)) FOR [AmountInJde]
GO
/****** Object:  StoredProcedure [dbo].[SP_ReconciliationReportGet]    Script Date: 6/1/2024 10:29:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Peter Yan
-- Create date: 2024-05-31
-- Description:	Get reconciliation report
-- =============================================
CREATE PROCEDURE [dbo].[SP_ReconciliationReportGet]
AS
BEGIN
 select 
  *, 
  IIF(
    Insurance = 0, 
    AmountInJde, 
    IIF(
      TotalAmountInJdeWithInsurance < LimitCUsd, 
      AmountInJde - AmountInJde * InsuranceRate, 
      InsuranceLimit
    )
  ) NetExposure 
from 
  (
    select 
      a.ContractNo, 
      a.ACCode, 
      a.Description, 
      a.SupplierCode, 
      a.SupplierName, 
      a.DueDate, 
      a.AmountInCtrm, 
      a.AmountInJde, 
      IIF(
        a.PDRate is null, i.PdRate, a.PDRate
      ) PdRate, 
      a.AmountInJde * IIF(
        a.PDRate is null, i.PdRate, a.PDRate
      ) ExpectedLoss, 
      a.SFAcctTitle, 
      IIF(i.id is null, 0, 1) Insurance, 
	  IIF(i.InsuranceRate is null, 0, i.InsuranceRate) InsuranceRate, 
      IIF(
        i.id is null, 
        0, 
        i.LimitCusd / count(1) over(partition by i.CpName)
      ) InsuranceLimit, 
      Sum(a.AmountInJde) over (partition by a.SFAcctTitle) * i.InsuranceRate TotalAmountInJdeWithInsurance, 
      i.LimitCUsd 
    from 
      [dbo].[ARAPJDE] a 
      left join Insurance i on a.suppliername = i.CpName
  ) t
END
GO
