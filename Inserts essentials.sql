USE CONTROLE_FINANCAS;

BEGIN TRANSACTION

INSERT INTO Type(IdType,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES('R','Receita',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Type(IdType,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES('D','Despesa',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(1,'Pagamento',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(2,'Benef�cio',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(3,'Aux�lio',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(4,'Bonifica��o',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(5,'Investimento',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(6,'Consumo Diario',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(7,'Alimenta��o',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(8,'Aquisi��o',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(9,'Cobran�a Peri�dica',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(1,'Transfer�ncia Banc�ria',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(2,'Pix',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(3,'Boleto',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(4,'Cart�o de cr�dito',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(5,'D�bito',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO ServicePlan(IdPlan,Description,ValuePlan,Renewal,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(1,'Free',0,0,1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO ServicePlan(IdPlan,Description,ValuePlan,Renewal,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(2,'Premium Monthly',29.99,30,1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO ServicePlan(IdPlan,Description,ValuePlan,Renewal,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(3,'Premium Annually',99.99,365,1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');

COMMIT TRANSACTION

select * from Type;
select * from Category;
select * from Method;
select * from ServicePlan;