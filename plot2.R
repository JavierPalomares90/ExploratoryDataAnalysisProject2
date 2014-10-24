########################### Plot 2 Project
setwd("/Users//Javier//Downloads/exdata_data_NEI_data")
# Read Data
NEI <- readRDS("./exdata-data-NEI_data/summarySCC_PM25.rds")
# Create Data
BC <- subset(NEI, fips == "24510")
pd <- aggregate(BC[c("Emissions")], list(year = BC$year), sum)
# Create Plot
png('plot2.png', width=480, height=480)
plot(pd$year, pd$Emissions, type = "l",
     main = "Total Emissions from PM2.5 in Baltimore City",
     xlab = "Year", ylab = "Emissions")