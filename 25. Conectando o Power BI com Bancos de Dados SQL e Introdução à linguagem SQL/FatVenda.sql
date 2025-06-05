CREATE VIEW VW_VENDAS AS 
SELECT 
	SalesKey,
	CONVERT(varchar(10),DateKey, 103) AS 'DateKey',
	StoreKey,
	ProductKey,
	CurrencyKey,
	SalesQuantity,
	ReturnQuantity,
	ReturnAmount,
	DiscountAmount,
	CONCAT(CONVERT(varchar(10),DateKey, 103), CurrencyKey) AS 'DateCurrencyKey'

FROM FactSales Venda
