
--SELECIONAR CLIENTES QUE ASSINAM PLANO PREMIUM E A VALIDA��O

SELECT 
	Client.IdClient [ID do Cliente], 
	Client.Name AS [Nome do Cliente], 
	Client.Email AS [Email do Cliente], 
	ServicePlan.Description AS [Tipo do Plano], 
	Signature.ValidationDate AS [Data da Valida��o], 
	Signature.ExpirationDate AS [Data de Expira��o]
FROM Client
LEFT JOIN Signature 
	ON Client.IdClient = Signature.IdClient
LEFT JOIN ServicePlan 
	ON Signature.IdPlan = ServicePlan.IdPlan
WHERE ServicePlan.IdPlan <> 1
ORDER BY Client.Name;

------------------------------------------------------------------------------------

--SELECT DETALHADO DE LAN�AMENTOS DO M�S DE JUNHO

SELECT
	BillsPayRecieve.IdBills AS [ID do Lan�amento],
	Client.IdClient AS [ID do Cliente],
	Client.Name AS [Nome do Cliente],
	Type.Description [Tipo do Lan�amento],
	Category.Description [Categoria do Lan�amento],
	Method.Description [M�todo do Lan�amento],
	BillsPayRecieve.Description [Descri��o do Lan�amento],
	BillsPayRecieve.ValuePredicted AS [Valor Previsto],
	BillsPayRecieve.ValuePaidRecieved AS [Valor Liquidado],
	BillsPayRecieve.DueDate AS [Data de Vencimento],
	BillsPayRecieve.SettlementDate AS [Data de Liquida��o],
	BillsPayRecieve.Receipt AS [Recibo de Lan�amento]
FROM BillsPayRecieve
LEFT JOIN Client
	ON BillsPayRecieve.IdClient = Client.IdClient
LEFT JOIN Type
	ON BillsPayRecieve.IdType = Type.IdType
LEFT JOIN Category
	ON BillsPayRecieve.IdCategory = Category.IdCategory
LEFT JOIN Method
	ON BillsPayRecieve.IdMethod = Method.IdMethod
WHERE 
	BillsPayRecieve.DueDate >= '20220601' AND BillsPayRecieve.DueDate < '20220701'
ORDER BY 
	Client.Name;

------------------------------------------------------------------------------------

--SELECT DE QUANTIDADE E SOMA POR TIPO DE LAN�AMENTO

SELECT 
	IdType AS [Tipo do Lan�amento],
	COUNT(IdType) AS [Quantidade Tipo],
	SUM(ValuePaidRecieved) AS [Soma por Tipo]
FROM BillsPayRecieve
GROUP BY IdType;

------------------------------------------------------------------------------------

--SELECT DE QUANTIDADE E GANHOS POR PLANOS DE ASSINATURA

SELECT 
	Signature.IdPlan,
	COUNT(Signature.IdPlan) AS [Quantidade Assinaturas],
	SUM(ServicePlan.ValuePlan) AS [Soma Por Planos]
FROM Signature
INNER JOIN ServicePlan
	ON Signature.IdPlan = ServicePlan.IdPlan
GROUP BY Signature.IdPlan;

------------------------------------------------------------------------------------

--M�DIA DO VALOR DOS LAN�AMENTOS POR TIPO

SELECT 
	IdType AS [Tipo do Lan�amento],
	MAX(ValuePredicted) AS [Maior Lan�amento],
	MIN(ValuePredicted) AS [Menor Lan�amento],
	AVG(ValuePredicted) AS [M�dia dos Lan�amentos]
FROM BillsPayRecieve
GROUP BY IdType;
--RIP CRIATIVIDADE :(