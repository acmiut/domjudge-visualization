select t.name, count(*) submissions
from submission s
    join contest c on s.cid = c.cid
    join team t on s.teamid = t.teamid
where c.shortname = 'ACM45'
    and t.name != 'DOMjudge'
group by t.name
order by submissions_count desc
