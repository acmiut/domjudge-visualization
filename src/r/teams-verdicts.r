library(ggplot2)

teams_verdicts = read.csv('../../data/table/teams-verdicts.csv')
teams_verdicts = reshape2::melt(teams_verdicts)

p <- ggplot(teams_verdicts, aes(x=name, y=value, fill=variable)) +
     ggtitle("Teams' Verdicts Bar Chart") +
     xlab('Team Name') +
     ylab('Number of Submissions') +
     geom_bar(stat='identity') +
     theme(axis.text.x=element_text(angle=45, hjust=1))

ggsave('../../data/plot/teams-verdicts.png', plot=p)
