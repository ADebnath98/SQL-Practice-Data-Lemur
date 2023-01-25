SELECT count(distinct company_id) from (
SELECT *, row_number() over(partition by company_id, title, description order by job_id) rn 
FROM job_listings ) x 
where rn > 1;