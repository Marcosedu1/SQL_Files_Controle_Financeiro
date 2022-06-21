USE CONTROLE_FINANCAS;

BEGIN TRANSACTION

INSERT INTO Type(IdType,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES('R','Receita',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Type(IdType,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES('D','Despesa',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(1,'Pagamento',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(2,'Benefício',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(3,'Auxílio',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(4,'Bonificação',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(5,'Investimento',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(6,'Consumo Diario',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(7,'Alimentação',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(8,'Aquisição',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Category(IdCategory,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(9,'Cobrança Periódica',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(1,'Transferência Bancária',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(2,'Pix',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(3,'Boleto',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(4,'Cartão de crédito',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO Method(IdMethod,Description,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(5,'Débito',1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO ServicePlan(IdPlan,Description,ValuePlan,Renewal,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(1,'Free',0,0,1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO ServicePlan(IdPlan,Description,ValuePlan,Renewal,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(2,'Premium Monthly',29.99,30,1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');
INSERT INTO ServicePlan(IdPlan,Description,ValuePlan,Renewal,Active,CreationDate,ChangeDate,CreationUser,ChangeUser)VALUES(3,'Premium Annually',99.99,365,1,GETDATE(),GETDATE(),'marcos.camargo','marcos.camargo');

COMMIT TRANSACTION

select * from Type;
select * from Category;
select * from Method;
select * from ServicePlan;