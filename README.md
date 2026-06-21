# World Cup 2026: Odds vs Reality

## The Question
Before the tournament started, bookmakers and betting markets ranked teams by their expected chances of winning. Did the market get it right? This project tracks which teams are outperforming or underperforming their pre-tournament odds based on actual group-stage results.

## Approach
1. **Collect pre-tournament odds** for ~20-30 teams (outright winner odds from sportsbooks, converted to implied probability)
2. **Collect actual group-stage results** (wins, draws, losses, goal difference, points) as the tournament progresses
3. **Use SQL** to join the two datasets and rank teams by the gap between expected performance (odds rank) and actual performance (points/goal difference rank)
4. **Summarize in Excel** with a clean table and chart highlighting the biggest overperformers and underperformers

## Tools
- SQL (data joining, ranking, filtering)
- Excel (summary table + chart)

## Structure
- `/sql` — queries used to build the odds-vs-results comparison
- `/excel` — summary workbook with pivot table and chart
- `data/` — raw odds and results data used in this analysis

## Status
🚧 In progress — being built and updated as the World Cup 2026 group stage unfolds.
