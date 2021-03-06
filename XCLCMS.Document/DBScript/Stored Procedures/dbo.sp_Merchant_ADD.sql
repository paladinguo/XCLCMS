
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE PROCEDURE [dbo].[sp_Merchant_ADD]
@MerchantID bigint,
@MerchantName nvarchar(100),
@FK_MerchantType bigint,
@MerchantSystemType char(3),
@Domain varchar(200),
@LogoURL varchar(200),
@ContactName nvarchar(100),
@Tel varchar(200),
@Landline varchar(200),
@Email varchar(100),
@QQ varchar(50),
@FK_PassType bigint,
@PassNumber varchar(100),
@Address nvarchar(200),
@OtherContact nvarchar(500),
@MerchantRemark nvarchar(500),
@RegisterTime datetime,
@MerchantState char(1),
@Remark varchar(1000),
@RecordState char(1),
@CreateTime datetime,
@CreaterID bigint,
@CreaterName nvarchar(50),
@UpdateTime datetime,
@UpdaterID bigint,
@UpdaterName nvarchar(50),

@ResultCode INT OUTPUT,
@ResultMessage NVARCHAR(1000) OUTPUT

 AS 
BEGIN

	BEGIN TRY
		INSERT INTO [Merchant](
		[MerchantID],[MerchantName],[FK_MerchantType],[MerchantSystemType],[Domain],[LogoURL],[ContactName],[Tel],[Landline],[Email],[QQ],[FK_PassType],[PassNumber],[Address],[OtherContact],[MerchantRemark],[RegisterTime],[MerchantState],[Remark],[RecordState],[CreateTime],[CreaterID],[CreaterName],[UpdateTime],[UpdaterID],[UpdaterName]
		)VALUES(
		@MerchantID,@MerchantName,@FK_MerchantType,@MerchantSystemType,@Domain,@LogoURL,@ContactName,@Tel,@Landline,@Email,@QQ,@FK_PassType,@PassNumber,@Address,@OtherContact,@MerchantRemark,@RegisterTime,@MerchantState,@Remark,@RecordState,@CreateTime,@CreaterID,@CreaterName,@UpdateTime,@UpdaterID,@UpdaterName
		)

		SET @ResultCode=1
	END TRY
	BEGIN CATCH
			SET @ResultMessage= ERROR_MESSAGE() 
			SET @ResultCode=0
	END CATCH

END


 




GO
