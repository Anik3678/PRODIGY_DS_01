#Prodigy Infotech DS Task-1

#Create a barchart or histogram to visualise the distribution of a categorical or continuous variable.
#Such as distribution of ages or gender in the population.

#Load the data
population<-read.csv("C:\\Users\\User\\Documents\\Data science\\Internship\\Prodigy Infotech Internship\\Task-1\\world_population.csv")

#View the data
View(population)

#Column names of population
colnames(population)

#Observing no. of rows & columns of the dataset
dim(population)

#Checking for missing value
any(is.na(population))

#Removing unnecessary columns
new_population<-population[,-c(2,4,5,12,13,14,15,16,17)]
new_population

#Viewing new data
View(new_population)

#Observing column names of new data
colnames(new_population)

#Dataset for the year of 2022
population2022<-new_population[,c("Country.Territory","X2022.Population")]

#Sorting the dataset in decreaing manner
populations2022 <- population2022[order(population2022$X2022.Population,decreasing = TRUE), ]
populations2022

#Dataset for top 10 countries in the year of 2022
top10_populations2022 <- head(populations2022,10)
top10_populations2022

#Bar diagram for top 10 countries in the year of 2022
barplot(top10_populations2022$X2022.Population,
        names.arg = top10_populations2022$Country.Territory,
        ylab = "Population",
        main = "Top 10 populated countries in 2022",
        col="skyblue",
        las=2,
        cex.names = 0.7,
        cex.axis = 0.6)


#Dataset for the year of 2010
population2010<-new_population[,c("Country.Territory","X2010.Population")]

#Sorting the dataset in decreaing manner
populations2010 <- population2010[order(population2010$X2010.Population,decreasing = TRUE), ]

#Dataset for top 10 countries in the year of 2010
top10_populations2010 <- head(populations2010,10)
top10_populations2010

#Bar diagram for top 10 countries in the year of 2010
barplot(top10_populations2010$X2010.Population,
        names.arg = top10_populations2010$Country.Territory,
        ylab = "Population",
        main = "Top 10 populated countries in 2010",
        col="skyblue",
        las=2,
        cex.names = 0.7,
        cex.axis = 0.6)

#Dataset for the year of 1990
population1990<-new_population[,c("Country.Territory","X1990.Population")]

#Sorting the dataset in decreaing manner
populations1990 <- population1990[order(population1990$X1990.Population,decreasing = TRUE), ]

#Dataset for top 10 countries in the year of 1990
top10_populations1990<- head(populations1990,10)
top10_populations1990

#Bar digram for top 10 countries in the year of 1990
barplot(top10_populations1990$X1990.Population,
        names.arg = top10_populations1990$Country.Territory,
        ylab = "Population",
        main = "Top 10 populated countries in 1990",
        col="skyblue",
        las=2,
        cex.names = 0.7,
        cex.axis = 0.6)

#Dataset for last 10 countries in the year of 2022
bottom10_populations2022 <- tail(populations2022,10)
bottom10_populations2022

#Bar digram for last 10 countries in the year of 2022
barplot(bottom10_populations2022$X2022.Population,
        names.arg = bottom10_populations2022$Country.Territory,
        ylab = "Population",
        main = "Last 10 populated countries in 2022",
        col="skyblue",
        las=2,
        cex.names = 0.7,
        cex.axis = 0.6)

#Dataset for last 10 countries in the year of 2010
bottom10_populations2010 <- tail(populations2010,10)
bottom10_populations2010

#Bar diagram for last 10 countries in the year of 2010
barplot(bottom10_populations2010$X2010.Population,
        names.arg = bottom10_populations2010$Country.Territory,
        ylab = "Population",
        main = "Last 10 populated countries in 2010",
        col="skyblue",
        las=2,
        cex.names = 0.7,
        cex.axis = 0.6)

#Dataset for last 10 countries in the year of 1990
bottom10_populations1990 <- tail(populations1990,10)
bottom10_populations1990

#Bar diagram for last 10 countries in the year of 1990
barplot(bottom10_populations1990$X1990.Population,
        names.arg = bottom10_populations1990$Country.Territory,
        ylab = "Population",
        main = "Last 10 populated countries in 1990",
        col="skyblue",
        las=2,
        cex.names = 0.7,
        cex.axis = 0.6)



#Total Population in India from the year of 1990 - 2022
year=colnames(new_population[93,][3:8])
year[c(1,2,3,4,5,6)]<-c(2022,2020,2015,2010,2000,1990)
popln=new_population[93,][3:8]
popln[c(1,2,3,4,5,6)]<-c(1417173173, 1396387127, 1322866505, 1240613620, 1059633675, 870452165)
plot(year,popln,
     type="b",
     las=1,
     cex.axis=0.6,
     ylab="Population",
     xlab="Year",
     main="Population of India from the year of 1990 - 2022",
     col="darkred"
     )
