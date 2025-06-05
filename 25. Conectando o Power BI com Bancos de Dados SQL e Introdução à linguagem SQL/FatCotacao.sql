CREATE VIEW VW_COTACOES AS
SELECT 
	Cota.ExchangeRateKey,
	Cota.CurrencyKey,
	CONVERT(varchar(10),Cota.DateKey, 103) AS 'DateKey',
	Cota.AverageRate,
	Moeda.CurrencyName,
	CONCAT(CONVERT(varchar(10),Cota.DateKey, 103), Cota.CurrencyKey) AS 'DateCurrencyKey'

FROM FactExchangeRate Cota
LEFT JOIN DimCurrency Moeda ON (Cota.CurrencyKey = Moeda.CurrencyKey)