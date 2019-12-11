#Install (if necessary) and load dplyr package
if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")} 


library(dplyr)

#set working directory for location of SwashSim output files
setwd('C:\\Users\\Asean Davis\\Documents\\Traffic Eng (Fall 19)\\Performance Measures Project')


#Prompt User for File Name
SimulationLaneFileName <- readline(prompt = "Enter full CSV File name (e.g. Link_48_Lane_1_Detector_1_1_1.csv): ")

#Prompt user for Simulation Variables
SimulationWarmupTime <- readline(prompt = "Enter Warmup Time in seconds: ")
SimulationWarmupTime <- as.integer(SimulationWarmupTime)
SimulationDuration <- readline(prompt = "Enter Simuation Duration in seconds: ")
SimulationDuration <- as.integer(SimulationDuration)


#Read in Data from Raw Data File provided in class
alldata = read.csv(SimulationLaneFileName)

#Remove Warmup Data from beginning of Data Frame
Simdata <- filter(alldata,Actuation.Time.On..s.>=SimulationWarmupTime)

#Determine Total Vehicle Count during Simulation
SimVehicleCount <- length(Simdata$Actuation.Time.On..s.)

#Count Followers during Simulation
FollowerCount <- length(which(Simdata$Headway..s.<=2.5))

#Calculate Percent Followers
RatioFollowers = FollowerCount/SimVehicleCount
PercentFollowers = RatioFollowers*100

#Calculate Average Speed
AverageSpeed <- mean(Simdata$Speed..mi.h.)

#Calculate Follower Density
FollowerDensity <- RatioFollowers * SimVehicleCount * (3600/SimulationDuration) / AverageSpeed

#Print Results
#print(paste("Average Speed (mi/h): ", round(AverageSpeed,digits = 2)))
print(SimulationLaneFileName)
print(paste("Percent Followers (%): ", round(PercentFollowers,digits = 2)))
print(paste("Follower Density (Followers/mi/ln): ", round(FollowerDensity, digits = 2)))