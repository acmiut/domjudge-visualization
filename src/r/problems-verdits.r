library(ggplot2)

problems_verdicts = read.csv('../../data/table/problems-verdicts.csv')
problems_verdicts = reshape2::melt(problems_verdicts)

p <- ggplot(problems_verdicts, aes(x=shortname, y=value, fill=variable)) +
     ggtitle("Problems' Verdicts Bar Chart") +
     xlab('Problem') +
     ylab('Number of Submissions') +
     geom_bar(stat='identity')

ggsave(filename='../../data/plot/problems-verdicts.png', plot=p)
