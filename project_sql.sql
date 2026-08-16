use project;

show tables;

select * from deliveries;

select * from matches;

USE project;

SELECT COUNT(*) AS total_matches FROM matches;
SELECT COUNT(*) AS total_deliveries FROM deliveries;

-- 1. IPL matches in each season
SELECT season, COUNT(*) AS total_matches
FROM matches
GROUP BY season
ORDER BY season;


-- 2. Teams with the most match wins
SELECT winner AS team, COUNT(*) AS total_wins
FROM matches
WHERE winner IS NOT NULL AND winner <> ''
GROUP BY winner
ORDER BY total_wins DESC;


-- 3. Top 10 batters by total runs
SELECT striker AS batter, SUM(runs_off_bat) AS total_runs
FROM deliveries
GROUP BY striker
ORDER BY total_runs DESC
LIMIT 10;

-- 4. Top 10 bowlers by wickets
SELECT bowler, COUNT(*) AS total_wickets
FROM deliveries
WHERE wicket_type IS NOT NULL
  AND wicket_type <> ''
  AND wicket_type NOT IN ('run out', 'retired hurt', 'obstructing the field')
GROUP BY bowler
ORDER BY total_wickets DESC
LIMIT 10;


-- 5. Most Player of the Match awards
SELECT player_of_match, COUNT(*) AS awards
FROM matches
WHERE player_of_match IS NOT NULL AND player_of_match <> ''
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;


-- 6. Toss decision preference
SELECT toss_decision, COUNT(*) AS times_chosen
FROM matches
GROUP BY toss_decision
ORDER BY times_chosen DESC;


-- 7. Venues hosting the most IPL matches
SELECT venue, COUNT(*) AS matches_hosted
FROM matches
WHERE venue IS NOT NULL AND venue <> ''
GROUP BY venue
ORDER BY matches_hosted DESC
LIMIT 10;





