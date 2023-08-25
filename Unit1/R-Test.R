# Relative Data Science experience (scale: 1-10)
relative_exp = c(3,1,1,4,.5,5,3)
# define the names and subjects
domains = c("Computer Science","Math","Statistics","Machine Learning","Domain Expertise","Communication", "Data Vis")

# Create the data frame
df3 = data.frame(Relative_Experience = relative_exp, Domain = domains)
df3

# Increase margin size
#par(mar=c(4,3,3,4))

# ploat as a barplot with years on the y axis and the x axis divided by names
barplot( df3$Relative_Experience, ylim = c(0, 8), names.arg = df3$Domain, las=0, font.axis=1, col="lightblue", ylab="Relative Experience", main="Data Science Domains")


dev.off()

install.packages("gapminder")
library(gapminder)
data("gapminder")

summary(gapminder)

# Attach allows you to continually use the dataset selected above
attach(gapminder)
median(pop)
hist(lifeExp)
hist(log(pop))
boxplot(lifeExp~continent)
plot(lifeExp ~ log(gdpPercap))