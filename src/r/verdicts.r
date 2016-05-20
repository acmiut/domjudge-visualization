library(ggplot2)
library(scales)

verdicts = read.csv('../../data/table/verdicts.csv')
verdicts = reshape2::melt(verdicts)

blank_theme <- theme_minimal()+
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.border = element_blank(),
    panel.grid=element_blank(),
    axis.ticks = element_blank(),
    plot.title=element_text(size=14, face="bold")
  )

total_submissions = sum(verdicts$value)

p <- ggplot(verdicts, aes(x='', y=value, fill=variable)) +
     ggtitle('Verdicts Pie Chart') +
     geom_bar(stat='identity', width=1) +
     coord_polar('y', start=0) +
     blank_theme +
     theme(axis.text.x=element_blank()) +
     geom_text(aes(y = value/2 + c(0, cumsum(value)[-length(value)]), 
                label = percent(value/total_submissions)), size=3)

ggsave('../../data/plot/verdicts.png', plot=p)