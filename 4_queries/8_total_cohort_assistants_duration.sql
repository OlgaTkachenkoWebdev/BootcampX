SELECT SUM(completed_at - started_at) as total_duration , cohorts.name as name
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;