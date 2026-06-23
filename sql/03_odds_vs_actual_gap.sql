SELECT
o.team,
o.implied_probability_pct,
r.points,
r.goal_difference,
RANK()OVER (ORDER BY o.implied_probability_pct DESC) AS odds_rank,
RANK()OVER (ORDER BY r.points DESC, r.goal_difference DESC) AS actual_rank,
(CAST(RANK()OVER (ORDER BY o.implied_probability_pct DESC) AS SIGNED)
- CAST(RANK()OVER(ORDER BY r.points DESC, r.goal_difference DESC) AS SIGNED)) AS rank_gap
FROM odds o
JOIN results r ON o.team = r.team
ORDER BY rank_gap DESC;