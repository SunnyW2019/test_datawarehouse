USE [ENERGI_RDM01]
GO
/****** Object:  StoredProcedure [RDM].[usp_Load_Claimant_Fact]    Script Date: 5/24/2021 4:08:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [RDM].[usp_Load_Claimant_Fact]
as 
truncate table [RDM].[Claimant_Fact]
insert into [RDM].[Claimant_Fact]
select  name, id, address, employer from stage.test_profile; 

/** add more testing **/

Update schema.table set name='Smith' where id=1234;
