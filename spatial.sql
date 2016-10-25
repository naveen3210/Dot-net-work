/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ID]
      ,[SpatialData],
	  SpatialData.ToString() AS 'SpatialDate'
	  ,SpatialData.AsGml() as 'SpatialText'
  FROM [spatialDB].[dbo].[SpatialTable]


  insert into [SpatialTable] ([SpatialData])
  values
  ('point(4 5)')
  ,('Linestring( 0 0, 8 8 )')
