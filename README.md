# Domjudge Visualization
### by [ACM Chapter](http://cereg.iut.ac.ir) of [Isfahan University of Technology](http://iut.ac.ir)

## Introduction
This project contains **SQL** and **R** scripts in order to obtain data from domjudge database and visualize it nicely. The scripts are explained further.

#### SQL scripts
These scripts are available at `src/sql/`


1. `teams-verdicts.sql`: Obtains number of submissions teams made during a particular contests grouped by the verdict their submissions got.  
2. `problems-verdicts.sql`: Obtains number of submissions for problems grouped by their verdicts.
3. `verdicts.sql`: Obtains number of submissions grouped by their verdicts.  

To have the scripts work, consider the following:  
* Replace `<YourJudgeTeam>` in every SQL script to the name of your Judge's team. e.g.: `DOMjudge`.
* Replace `<YourContestShortName>` in every SQL script to the name of the contest you are doing the visualization for. e.g.: `ACM45`.

#### R scripts
These scripts are available at `src/r/`. The results are saved into `data/plot/` directory.

1. `team-verdicts.r`: Plot a stacked bar chart from table `data/team-verdicts.csv`.  
2. `problems-verdicts.r`: Plot a stacked bar chart from table `data/problems-verdicts.csv`.  
3. `verdict.r`: Plot a pie chart from table `verdicts.csv`.

## Installing
This project depends on these packages:
1. **MySQL**  
2. **R**  
3. **ggplot** library for R.  
4. **Python 3**

Install them before running the scripts.

## Running
Simply run the script `dj-visualize.py` using `python3`. Then go to directory `data/plot/` and see the result.

```bash
cd domjudge-visualize
python3 dj-visualize.py
```
(TODO)

## License
[MIT](LICENSE.txt)
