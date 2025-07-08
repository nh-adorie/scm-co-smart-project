-- total sales amount theo product lines và warehouse

create view totalsalesamount as 
select p.productName, p.productLine, p.warehouseCode, od.priceEach, od.quantityOrdered, (od.priceEach*od.quantityOrdered) as totalSales
from products as p
inner join orderdetails as od on p.productCode = od.productCode;

select productLine, SUM(totalSales) as productLineslSalesAmount
from totalSalesAmount
group by productLine;

select
    warehousecode,
    GROUP_CONCAT(distinct(productline) order by productline separator ', ')
from
    products
GROUP BY
    warehouseCode;

-- tỉ lệ giữa capicity và sales amount
select 
    ts.warehouseCode, 
    w.warehousePctCap,
    sum(ts.totalSales) as warehouseSalesAmount,
    sum(ts.totalSales) / w.warehousePctCap as salesPerCapacity
from 
    totalSalesAmount as ts
join 
    warehouses as w 
    on ts.warehouseCode = w.warehouseCode
group by 
    ts.warehouseCode, w.warehousePctCap;

-- sales amount theo tháng của từng warehouse
create view monthlyOrder as
select 
	p.warehouseCode, 
	od.orderNumber, 
	(od.priceEach*od.quantityOrdered) as totalSales, 
Month(o.orderDate) as orderMonth
from orderdetails as od
join products as p on p.productCode = od.productCode
join orders as o on od.orderNumber = o.orderNumber;

select 
warehouseCode,
sum(
	case
		when orderMonth = '1' then totalSales 
        else 0
	end)
as JanSales,

sum(case when orderMonth ='2' then totalSales else 0 end) as FebSales,
sum(case when orderMonth ='3' then totalSales else 0 end) as MarSales,
sum(case when orderMonth ='4' then totalSales else 0 end) as AprSales,
sum(case when orderMonth ='5' then totalSales else 0 end) as MaySales,
sum(case when orderMonth ='6' then totalSales else 0 end) as JunSales,	
sum(case when orderMonth ='7' then totalSales else 0 end) as JulSales,
sum(case when orderMonth ='8' then totalSales else 0 end) as AugSales,
sum(case when orderMonth ='9' then totalSales else 0 end) as SepSales,
sum(case when orderMonth ='10' then totalSales else 0 end) as OctSales,
sum(case when orderMonth ='11' then totalSales else 0 end) as NovSales,
sum(case when orderMonth ='12' then totalSales else 0 end) as DecSales

from monthlyOrder
group by warehouseCode
order by warehouseCode;