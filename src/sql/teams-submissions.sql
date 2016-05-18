select t.name, count(*) submissions
from submission s
    join contest c on s.cid = c.cid
    join team t on s.teamid = t.teamid
where c.shortname = '<YourContestShortName>'
    and t.name != '<YourJudgeTeam>'
group by t.name
order by submissions_count desc
