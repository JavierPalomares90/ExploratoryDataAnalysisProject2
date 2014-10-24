setwd("/Users//Javier//Dropbox/ExploratoryDataAnalysis//Project2//exdata_data_NEI_data")
# Read Data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
# Create Plot-Data
pd <- aggregate(NEI[c("Emissions")], list(year = NEI$year), sum)
png('/Users//Javier//Dropbox/ExploratoryDataAnalysis//Project2/plot1.png', width=480, height=480)
plot(pd$year,pd$Emissions, type = "l",
     main = "Total Emissions from PM2.5 in the US",
     xlab = "year", ylab = "Emissions")
dev.off()