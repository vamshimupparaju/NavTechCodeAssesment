USE [dbNavTech]
GO

/****** Object:  StoredProcedure [dbo].[usp_Order_Select]    Script Date: 06-04-2021 19:16:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author		:		Vamshi Krishna Mupparaju
-- Create date	:		26-03-2021
-- Description	:		To Get All Order Details based on Page Index and Page Size
-- =============================================
CREATE PROCEDURE [dbo].[usp_Order_Select] 
	@PageIndex		INT,
	@PageSize		INT
AS
BEGIN
	
	DECLARE @STRSQL VARCHAR(8000)
	SET @PageIndex = @PageIndex - 1

	CREATE TABLE #TEMP_ORDER_DETAILS
	(
		OrderId				INT,
		CustomerName		VARCHAR(100),
		MobileNo			VARCHAR(10),
		Email				VARCHAR(50),
		City				VARCHAR(50),
		PinCode				VARCHAR(10),
		ItemName			VARCHAR(100),
		Manufacturer		VARCHAR(100),
		Quantity			INT,
		Price				DECIMAL(18,2),
		TotalPrice			DECIMAL(18,2),
		PurchasedOn			DATETIME
	)

	SET @STRSQL = 

	'  INSERT INTO #TEMP_ORDER_DETAILS

		SELECT 
			ord.OrderId,
			FirstName + '' '' + LastName as CustomerName,
			MobileNo,
			Email,
			City,
			PinCode,
			itm.Name,
			Manufacturer,
			Quantity,
			Price,
			(Price * Quantity),
			ord.CreatedOn

		FROM
			[dbo].[customer] cust
			INNER JOIN [dbo].[order] ord ON cust.CustomerId = ord.CustomerId
			INNER JOIN [dbo].[item] itm ON ord.ItemId = itm.ItemId
			ORDER By ord.OrderId ASC 
			OFFSET (('+ CAST(@PageIndex AS VARCHAR(5)) + ') * ' + CAST(@PageSize AS VARCHAR(10)) + ') ROWS
			FETCH NEXT ' + CAST(@PageSize AS VARCHAR(10)) + ' ROWS ONLY ;'
    
	EXEC(@STRSQL);

	SELECT * FROM #TEMP_ORDER_DETAILS;
END
GO


