CREATE VIEW VW_LOJAS AS
SELECT 
	Loja.StoreKey,
	Loja.StoreName,
	Loja.StoreType,
	Loja.Status,
	Geo.RegionCountryName AS 'Country',
	Geo.ContinentName AS 'Continen'

FROM DimStore Loja
LEFT JOIN DimGeography Geo ON (Loja.GeographyKey = Geo.GeographyKey)