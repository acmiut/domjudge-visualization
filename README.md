# Domjudge Visualization
### by [ACM Chapter](http://cereg.iut.ac.ir) of [Isfahan University of Technology](http://iut.ac.ir)

## Introduction
This project contains **SQL** and **R** scripts in order to obtain data from domjudge database and visualize it nicely. The scripts are explained further.

#### SQL scripts
These scripts are available at `src/sql/`

1. `all-submissions.sql`: Obtains total number of submission in a particular contest which are submitted by participants (not the Judge).  
2. `team-submissions.sql`: Obtains number of submissions a team made during a particular contest.  
3. `teams-verdicts.sql`: Obtains number of submissions teams made during a particular contests grouped by the verdict their submissions got.  
4. (TODO) `verdicts.sql`: Obtains number of submissions grouped by their verdicts.  
(TODO): more scripts

To have the scripts work, consider the following:  
* Replace `<YourJudgeTeam>` in every SQL script to the name of your Judge's team. e.g.: `DOMjudge`.
* Replace `<YourContestShortName>` in every SQL script to the name of the contest you are doing the visualization for. e.g.: `ACM45`.

#### R scripts
(TODO)

## License
(TODO)
