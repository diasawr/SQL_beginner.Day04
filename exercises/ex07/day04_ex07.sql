INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT MAX(id) FROM person_visits) + 1, (SELECT id from person  WHERE name = 'Dmitriy'),
      ( SELECT menu.pizzeria_id from menu
           join pizzeria on menu.pizzeria_id = pizzeria.id AND pizzeria.name != 'Papa Johns'
                                  where price < 800
                                  LIMIT 1), '2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;