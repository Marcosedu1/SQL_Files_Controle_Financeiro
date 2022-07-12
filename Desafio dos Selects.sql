
--SELECIONAR CLIENTES QUE ASSINAM PLANO PREMIUM E A VALIDAÇÃO

SELECT 
	Client.IdClient [ID do Cliente], 
	Client.Name AS [Nome do Cliente], 
	Client.Email AS [Email do Cliente], 
	ServicePlan.Description AS [Tipo do Plano], 
	Signature.ValidationDate AS [Data da Validação], 
	Signature.ExpirationDate AS [Data de Expiração]
FROM Client
LEFT JOIN Signature 
	ON Client.IdClient = Signature.IdClient
LEFT JOIN ServicePlan 
	ON Signature.IdPlan = ServicePlan.IdPlan
WHERE ServicePlan.IdPlan <> 1
ORDER BY Client.Name;

------------------------------------------------------------------------------------

--SELECT DETALHADO DE LANÇAMENTOS DO MÊS DE JUNHO

SELECT
	BillsPayRecieve.IdBills AS [ID do Lançamento],
	Client.IdClient AS [ID do Cliente],
	Client.Name AS [Nome do Cliente],
	Type.Description [Tipo do Lançamento],
	Category.Description [Categoria do Lançamento],
	Method.Description [Método do Lançamento],
	BillsPayRecieve.Description [Descrição do Lançamento],
	BillsPayRecieve.ValuePredicted AS [Valor Previsto],
	BillsPayRecieve.ValuePaidRecieved AS [Valor Liquidado],
	BillsPayRecieve.DueDate AS [Data de Vencimento],
	BillsPayRecieve.SettlementDate AS [Data de Liquidação],
	BillsPayRecieve.Receipt AS [Recibo de Lançamento]
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

--SELECT DE QUANTIDADE E SOMA POR TIPO DE LANÇAMENTO

SELECT 
	IdType AS [Tipo do Lançamento],
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

--MÉDIA DO VALOR DOS LANÇAMENTOS POR TIPO

SELECT 
	IdType AS [Tipo do Lançamento],
	MAX(ValuePredicted) AS [Maior Lançamento],
	MIN(ValuePredicted) AS [Menor Lançamento],
	AVG(ValuePredicted) AS [Média dos Lançamentos]
FROM BillsPayRecieve
GROUP BY IdType;
--RIP CRIATIVIDADE :(