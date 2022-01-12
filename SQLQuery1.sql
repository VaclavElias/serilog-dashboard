  SELECT Message, Exception, COUNT(*)
  FROM [twentybull].[dbo].[Twenty360.Logs]
  GROUP BY Message, Exception
  ORDER BY COUNT(*) DESC

SELECT TOP (1000) [Id]
      ,[Message]
      ,[MessageTemplate]
      ,[Level]
      ,[TimeStamp]
      ,[Exception]
      ,[Properties]
  FROM [twentybull].[dbo].[Twenty360.Logs]
  --WHERE Exception LIKE '%System.Text.Json%'
  WHERE Message = 'An unhandled exception has occurred while executing the request.'
  ORDER BY Id DESC


  
  