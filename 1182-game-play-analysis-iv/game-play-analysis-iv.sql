# Write your MySQL query statement below
select
  ROUND(COUNT(DISTINCT player_id) / (select COUNT(DISTINCT player_id) from Activity), 2) AS fraction
from
  Activity
where
  (player_id, DATE_SUB(event_date, INTERVAL 1 DAY))
  in (
    select player_id, MIN(event_date) as first_login from Activity group by player_id)