use master
drop database XM
go 
create database XM
go

use XM
drop table Cgddzb
go
create table Cgddzb
(
	BillNo Varchar(50),
	BillDate	date	,				
	CustomerID	Varchar(50),					
	CustAddress	Varchar(50)	,				
	BillStyleName	Varchar(50)	,			
	priceOfTax	Varchar(50)	,				
	BillStatus	int		,		
	FactCurrencyName	Varchar(50)	,				
	CurFixedRate	Money(18,2)	,				
	FactAreaName	Varchar(50)	,			
	SalesId	Varchar(50)		,			
	Maker	Varchar(50)		,			
	DepertName	Varchar(50)	,				
	Permitter	Varchar(50)	,				
	ProjectName	Varchar(50)	,				
	
)
go

drop table Cgddmxb
go
create table Cgddmxb
(
	
SerNo	Int	,
ProdID	Varchar(50)	,
ProdName	Varchar(50),	
ProdSuze	Varchar(50),	
SUnit	Varchar(50)	,
sQuantity	int	,
OldPrice	Money(18,2),	
Discount	Int	,
sPrice	Money(18,2)	,
Amount	Money(18,2)	,
TaxRate	Int	,
TaxAmt	Money(18,2)	,
VFTotal	Money(18,2)	,
PreInDate	datetime	,
QtyRemain	int	,
IsGift	bit	,
ItemRemark	Varchar(50)	,
TranType	Varchar(50)	,
FromNo	Varchar(50),
	
	
)
go


drop table PanDianzb
go
create table PanDianzb
(
	
WareId	Varchar(50),
IncSubjectName	Varchar(50)	,
DecSujectName	Varchar(50)	,
AbjustDate	Datetime	,
BillNo	Varchar(50),
VoucherNo	Varchar(50)	,
SalesName	Varchar(50)	,
DepartID	Varchar(50),
MakerSign	Varchar(50)	,
PermitterSign	Varchar(50)	,

	
)
go



drop table PanDianmxb
go
create table PanDianmxb
(
	
SerNo	int	,
ProdID	Varchar(50)	,
ProdName	Varchar(50),
ProdSize	Varchar(50),
Unit	Varchar(50),
CurQty	int	,
CheckQty	int	,
Quantity	int	,
Price	Money(18,2)	,
Amount	Money(18,2)	,
HaveBatch	Varchar(50),
IemRemark	Varchar(50),


	
)
go