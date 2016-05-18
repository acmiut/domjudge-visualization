select count(*) submissions_count
from submission s
    join contest c on s.cid = c.cid
    join team t on s.teamid = t.teamid
where c.shortname = '<Contest Short Name>'
    and t.name != 'DOMjudge'
