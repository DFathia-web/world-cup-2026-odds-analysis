USE worldcup2026;
SELECT
    team,played,wins,draws,losses,goal_difference,points
    FROM results
    ORDER BY points desc,goal_difference desc;    
