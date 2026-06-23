
USE worldcup2026;
SELECT
    team,pre_tournament_odds,implied_probability_pct
    FROM odds
    ORDER BY implied_probability_pct desc;
