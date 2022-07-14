SELECT e_e.game, count(*) AS games_count
FROM (SELECT concat(least(home_team, away_team), ' - ' , greatest(home_team, away_team)) AS game
FROM event_entity) AS e_e
GROUP BY game
ORDER BY games_count