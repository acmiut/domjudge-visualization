select IfNull(shortname, 'Total') as shortname,
    correct, wronganswer, timelimit, memorylimit, outputlimit, runerror, nooutput, compilererror,
    correct + wronganswer + timelimit + memorylimit + outputlimit + runerror + nooutput + compilererror as Total
from (
    select cp.shortname,
    count(case when j.result = 'correct' then 1 else null end) as correct,
    count(case when j.result = 'wrong-answer' then 1 else null end) as wronganswer,
    count(case when j.result = 'timelimit' then 1 else null end) as timelimit,
    count(case when j.result = 'memory-limit' then 1 else null end) as memorylimit,
    count(case when j.result = 'output-limit' then 1 else null end) as outputlimit,
    count(case when j.result = 'run-error' then 1 else null end) as runerror,
    count(case when j.result = 'no-output' then 1 else null end) as nooutput,
    count(case when j.result = 'compiler-error' then 1 else null end) as compilererror
    from submission s
        join contest c on s.cid = c.cid
        join team t on s.teamid = t.teamid
        join contestproblem cp on s.probid = cp.probid and s.cid = cp.cid
        join judging j on s.submitid = j.submitid
    where c.shortname = 'ACM45'
        and t.name != 'DOMjudge'
    group by shortname
    with rollup
) as counts
