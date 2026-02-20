/*Question :What are the most indemand skills for data Scientist 
- Identify the top demand skills for data Data Scientist
- Focus on remote job postings
- Why? Retrieves the top 10 skills and most valuable skills
*/

SELECT
 sd.skills,
 count(jpf.*) as demand_count
from job_postings_fact jpf
inner JOIN skills_job_dim as sjd
on jpf.job_id=sjd.job_id
inner join skills_dim as sd
on sjd.skill_id=sd.skill_id
where 
jpf.job_title_short='Data Scientist' and jpf.job_work_from_home=True
group by sd.skills
order by demand_count desc
limit 10;

*/
┌────────────┬──────────────┐
│   skills   │ demand_count │
│  varchar   │    int64     │
├────────────┼──────────────┤
│ python     │        20669 │
│ sql        │        14676 │
│ r          │         8873 │
│ aws        │         5715 │
│ tableau    │         4784 │
│ azure      │         4336 │
│ spark      │         4042 │
│ pandas     │         3982 │
│ tensorflow │         3905 │
│ sas        │         3560 │
├────────────┴──────────────┤
│ 10 rows         2 columns │
└───────────────────────────┘
*/

