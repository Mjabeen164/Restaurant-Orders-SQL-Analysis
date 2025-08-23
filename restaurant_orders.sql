select * from  order_details od
left join menu_items m 
on od.item_id = m.menu_item_id 
select * from  order_details od
left join menu_items m 
on od.item_id = m.menu_item_id 
order by order_id desc
select item_name, count(order_details_id) as num_pur
 from  order_details od
left join menu_items m 
on od.item_id = m.menu_item_id 
group by item_name
order by num_pur asc
select item_name, category, count(order_details_id) as num_pur
 from  order_details od
left join menu_items m 
on od.item_id = m.menu_item_id 
group by item_name, category
order by num_pur desc
select item_name, category, count(order_details_id) as num_pur
 from  order_details od
left join menu_items m 
on od.item_id = m.menu_item_id 
group by item_name, category
order by num_pur asc
select order_id, sum(price) as total_spend
 from  order_details od
left join menu_items m 
on od.item_id = m.menu_item_id 
group by order_id
order by total_spend desc
limit 5
select category, sum(price) as total_spend
 from  order_details od
left join menu_items m 
on od.item_id = m.menu_item_id 
where order_id = 440
group by category
select  category, count(item_id) as num_items
 from  order_details od
left join menu_items m 
on od.item_id = m.menu_item_id
where order_id in (440, 2075, 1957, 330, 2675)
group by order_id,category 

