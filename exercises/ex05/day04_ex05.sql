CREATE VIEW  v_price_with_discount AS
(
SELECT name, pizza_name, price, ROUND(price - (price * 0.1)) as discount_price
FROM menu
         JOIN person_order po on menu.id = po.menu_id
         JOIN person p on po.person_id = p.id
order by name, pizza_name
    )
