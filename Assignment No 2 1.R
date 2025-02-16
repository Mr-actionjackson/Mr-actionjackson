##################################################
#
# QMB 6304: DATA VISUALIZATION
# Assignment 2
# Due: Feb 14, 2025, 11:59 PM
#
# Student: Fulton Quichimbo Goya
# MBA Student
# College of Business
# University of Central Florida
#
# February 12, 2025
#
##################################################
# Preparing the Workspace
##################################################
#
# Clear workspace
rm(list=ls(all=TRUE))
#
# Setting working directory
setwd("~/GitHub/QMB6316_fulton/Data Visualization")
#
# Uploading necessary libraries
library(tidyverse)
#
# Upload Data Set
CarSales <- read.csv("CarSales.csv")
#
# Aggregate Data
agg_data <- aggregate(cbind(SalePrice, CostPrice, LaborCost, 
SpareParts) ~ Make, data = CarSales, FUN = mean)
#
# Summarize of Car Sales
CarSales |> summarize(meansale=mean(SalePrice),margin=1-sum(CostPrice)
/sum(SalePrice))
#
# Group by make
CarSales |> group_by(Make) |> summarize(meansale=mean(SalePrice),margin=1-sum
(CostPrice)/sum(SalePrice))
#
# Add Group by make in the data grill
CarSales |> group_by(Make) |> summarize(meansale=mean(SalePrice),margin=1-sum
(CostPrice)/sum(SalePrice))-> means_by_make
#
##################################################
# Section No 1 of the Assignment
# Produce four plots according to the following instructions
#
# Plot No 1_1
# Create a scatter plot of average sale price vs. average cost for different 
# makes of cars - Use blue filled circles
# 
plot1_1 <- ggplot(agg_data, aes(x = CostPrice, y = SalePrice)) +
  geom_point(color = "blue", shape = 16, size = 3) +
  labs(title = "Average Sale Price vs. Average Cost",
       x = "Average Cost", y = "Average Sale Price") +
  theme_minimal()
print(plot1_1)
#
# Plot No 1_2
# Create a scatter plot of average sale price vs. average labor cost for 
# different makes of cars - Use blue filled squares
# 
plot1_2 <- ggplot(agg_data, aes(x = LaborCost, y = SalePrice)) +
  geom_point(color = "blue", shape = 15, size = 3) +
  labs(title = "Average Sale Price vs. Average Labor Cost",
       x = "Average Labor Cost", y = "Average Sale Price") +
  theme_minimal()
print(plot1_2)
#
# Plot No 1_3
# Create a scatter plot of average sale price vs. average cost of spare parts 
# for different makes of cars - Use blue filled triangles
# 
plot1_3 <- ggplot(agg_data, aes(x = SpareParts, y = SalePrice)) +
  geom_point(color = "blue", shape = 17, size = 3) +
  labs(title = "Average Sale Price vs. Average Spare Parts Cost",
       x = "Average Spare Parts Cost", y = "Average Sale Price") +
  theme_minimal()
print(plot1_3)
#
# Plot No 1_4
# Create a scatter plot of average labor cost vs. average cost of spare  
# parts for different makes of cars - Use blue filled circles with red borders
# Add the linear regression line using a solid line
# 
plot1_4 <- ggplot(agg_data, aes(x = LaborCost, y = SpareParts)) +
  geom_point(color = "blue", fill = "red", shape = 21, size = 3, stroke = 1) +
  geom_smooth(method = "lm", color = "black", linetype = "solid") +
  labs(title = "Average Labor Cost vs. Average Spare Parts Cost",
       x = "Average Labor Cost", y = "Average Spare Parts Cost") +
  theme_minimal()
print(plot1_4)
#
##################################################
# Section No 2 of the Assignment
# For each of those four plots created in section 1, do the following:
# Add a vertical and a horizontal dashed line to each plot representing the 
# average values - Note: Do not take the average of the averages - Take the 
# average of the corresponding variable over all the cars in the dataset
#
# Calculating the average of the corresponding variables
avg_SalePrice <- mean(CarSales$SalePrice)
avg_CostPrice <- mean(CarSales$CostPrice)
avg_LaborCost <- mean(CarSales$LaborCost)
avg_SpareParts <- mean(CarSales$SpareParts)
#
# Plot No 2_1
# 
plot2_1 <- ggplot(agg_data, aes(x = CostPrice, y = SalePrice)) +
  geom_point(color = "blue", shape = 16, size = 3) +
  geom_vline(xintercept = avg_CostPrice, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  labs(title = "Average Sale Price vs. Average Cost",
       x = "avg_CostPrice", y = "avg_SalePrice") +
  theme_minimal()
print(plot2_1)
# 
# Plot No 2_2
#
plot2_2 <- ggplot(agg_data, aes(x = LaborCost, y = SalePrice)) +
  geom_point(color = "blue", shape = 15, size = 3) +
  geom_vline(xintercept = avg_LaborCost, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  labs(title = "Average Sale Price vs. Average Labor Cost",
       x = "avg_LaborCost", y = "avg_SalePrice") +
  theme_minimal()
print(plot2_2)
# 
# Plot No 2_3
#
plot2_3 <- ggplot(agg_data, aes(x = SpareParts, y = SalePrice)) +
  geom_point(color = "blue", shape = 17, size = 3) +
  geom_vline(xintercept = avg_SpareParts, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  labs(title = "Average Sale Price vs. Average Spare Parts Cost",
       x = "avg_SpareParts", y = "avg_SalePrice") +
  theme_minimal()
print(plot2_3)
# 
# Plot No 2_4
#
plot2_4 <- ggplot(agg_data, aes(x = LaborCost, y = SpareParts)) +
  geom_point(color = "blue", fill = "red", shape = 21, size = 3, stroke = 1) +
  geom_smooth(method = "lm", color = "black", linetype = "solid") +
  geom_vline(xintercept = avg_LaborCost, linetype = "dashed") +
  geom_hline(yintercept = avg_SpareParts, linetype = "dashed") +
  labs(title = "Average Labor Cost vs. Average Spare Parts Cost",
       x = "avg_LaborCost", y = "avg_SpareParts") +
  theme_minimal()
print(plot2_4)
#
##################################################
# Section No 3 of the Assignment
# Add the make of car next to each data point as text. Make sure all the added 
# labels fit in the plot
# 
# For the first three plots, add the labels to the right of each data point. 
# Hint: Use geom_text with hjust=-0.1. Increase the range of the x-axis; 
# let it stretch from 10% below the minimum x-value to 10% above the maximum 
# x-value
#
# Plot No 3_1
# 
plot3_1 <- ggplot(agg_data, aes(x = CostPrice, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 16, size = 3) +
  geom_vline(xintercept = avg_CostPrice, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$CostPrice) * 0.9, max(agg_data$CostPrice) * 1.1) +
  labs(title = "Average Sale Price vs. Average Cost",
       x = "avg_CostPrice", y = "avg_SalePrice") +
  theme_minimal()
print(plot3_1)
# 
# Plot No 3_2
#
plot3_2 <- ggplot(agg_data, aes(x = LaborCost, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 15, size = 3) +
  geom_vline(xintercept = avg_LaborCost, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$LaborCost) * 0.9, max(agg_data$LaborCost) * 1.1) +
  labs(title = "Average Sale Price vs. Average Labor Cost",
       x = "avg_LaborCost", y = "Avg_SalePrice") +
  theme_minimal()
print(plot3_2)
# 
# Plot No 3_3
#
plot3_3 <- ggplot(agg_data, aes(x = SpareParts, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 17, size = 3) +
  geom_vline(xintercept = avg_SpareParts, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$SpareParts) * 0.9, max(agg_data$SpareParts) * 1.1) +
  labs(title = "Average Sale Price vs. Average Spare Parts Cost",
       x = "avg_SpareParts", y = "avg_SalePrice") +
  theme_minimal()
print(plot3_3)
# 
# For the last plot, add the labels above each data point. Hint: Use 
# geom_text with vjust=-0.6. Increase the range of the y-axis; let it stretch 
# from 10% below the minimum y-value to 10% above the maximum y-value.
#
# Plot No 3_4
#
plot3_4 <- ggplot(agg_data, aes(x = LaborCost, y = SpareParts, label = Make)) +
  geom_point(color = "blue", fill = "red", shape = 21, size = 3, stroke = 1) +
  geom_smooth(method = "lm", color = "black", linetype = "solid") +
  geom_vline(xintercept = avg_LaborCost, linetype = "dashed") +
  geom_hline(yintercept = avg_SpareParts, linetype = "dashed") +
  geom_text(vjust = -0.6) +
  ylim(min(agg_data$SpareParts) * 0.9, max(agg_data$SpareParts) * 1.1) +
  labs(title = "Average Labor Cost vs. Average Spare Parts Cost",
       x = "avg_LaborCost", y = "avg_SpareParts") +
  theme_minimal()
print(plot3_4)
# 
##################################################
# Section No 4 of the Assignment
# Change the axes corresponding to sale price to include tick marks only 
# at values that are multiples of 40000 and change the corresponding labels 
# to thousands, for example, 40K. Hint: Look up the functions scale_y_continuous 
# and paste.
#
# Function to format y-axis labels
format_labels <- function(x) {
  paste0(x / 1000, "K")
}
# 
# Plot No 4_1 : Scatter plot: Sale Price vs. Cost Price
#
plot4_1 <- ggplot(agg_data, aes(x = CostPrice, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 16, size = 3) +
  geom_vline(xintercept = avg_CostPrice, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$CostPrice) * 0.9, max(agg_data$CostPrice) * 1.1) +
  scale_y_continuous(breaks = seq(0, max(agg_data$SalePrice), by = 40000), labels = format_labels) +
  labs(title = "Average Sale Price vs. Average Cost",
       x = "avg_CostPrice", y = "avg_SalePrice") +
  theme_minimal()
print(plot4_1)
#
# Plot No 4_2: Scatter plot: Sale Price vs. Labor Cost
#
plot4_2 <- ggplot(agg_data, aes(x = LaborCost, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 15, size = 3) +
  geom_vline(xintercept = avg_LaborCost, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$LaborCost) * 0.9, max(agg_data$LaborCost) * 1.1) +
  scale_y_continuous(breaks = seq(0, max(agg_data$SalePrice), by = 40000), labels = format_labels) +
  labs(title = "Average Sale Price vs. Average Labor Cost",
       x = "avg_LaborCost", y = "avg_SalePrice") +
  theme_minimal()
print(plot4_2)
#
# Plot No 4_3: Scatter plot: Sale Price vs. Spare Parts
#
plot4_3 <- ggplot(agg_data, aes(x = SpareParts, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 17, size = 3) +
  geom_vline(xintercept = avg_SpareParts, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$SpareParts) * 0.9, max(agg_data$SpareParts) * 1.1) +
  scale_y_continuous(breaks = seq(0, max(agg_data$SalePrice), by = 40000), labels = format_labels) +
  labs(title = "Average Sale Price vs. Average Spare Parts Cost",
       x = "avg_SpareParts", y = "avg_SalePrice") +
  theme_minimal()
print(plot4_3)
#
# Plot No 4_4: Scatter plot: Labor Cost vs. Spare Parts Cost with regression line
#
plot4_4 <- ggplot(agg_data, aes(x = LaborCost, y = SpareParts, label = Make)) +
  geom_point(color = "blue", fill = "red", shape = 21, size = 3, stroke = 1) +
  geom_smooth(method = "lm", color = "black", linetype = "solid") +
  geom_vline(xintercept = avg_LaborCost, linetype = "dashed") +
  geom_hline(yintercept = avg_SpareParts, linetype = "dashed") +
  geom_text(vjust = -0.6) +
  ylim(min(agg_data$SpareParts) * 0.9, max(agg_data$SpareParts) * 1.1) +
  labs(title = "Average Labor Cost vs. Average Spare Parts Cost",
       x = "avg_LaborCost", y = "avg_SpareParts") +
  theme_minimal()
print(plot4_4)
#
##################################################
# Section No 5 of the Assignment
# Change the axis corresponding to cost to include tick marks only at 
# values that are multiples of 20000 and change the corresponding labels to 
# thousands, for example, 20K.
#
# Scatter plot 5_1: Sale Price vs. Cost Price
#
plot5_1 <- ggplot(agg_data, aes(x = CostPrice, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 16, size = 3) +
  geom_vline(xintercept = avg_CostPrice, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$Cost) * 0.9, max(agg_data$Cost) * 1.1) +
  scale_y_continuous(breaks = seq(0, max(agg_data$SalePrice), by = 40000), labels = format_labels) +
  scale_x_continuous(breaks = seq(0, max(agg_data$CostPrice), by = 20000), labels = format_labels) +
  labs(title = "Average Sale Price vs. Average Cost",
       x = "avg_CostPrice", y = "avg_SalePrice") +
  theme_minimal()
print(plot5_1)
#
# 
# Scatter plot 5_2: Sale Price vs. Labor Cost
#
plot5_2 <- ggplot(agg_data, aes(x = LaborCost, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 15, size = 3) +
  geom_vline(xintercept = avg_LaborCost, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$LaborCost) * 0.9, max(agg_data$LaborCost) * 1.1) +
  scale_y_continuous(breaks = seq(0, max(agg_data$SalePrice), by = 40000), labels = format_labels) +
  scale_x_continuous(breaks = seq(0, max(agg_data$LaborCost), by = 20000), labels = format_labels) +
  labs(title = "Average Sale Price vs. Average Labor Cost",
       x = "avg_LaborCost", y = "avg_SalePrice") +
  theme_minimal()
print(plot5_2)
#
# Scatter plot 5_3: Sale Price vs. Spare Parts Cost
#
plot5_3 <- ggplot(agg_data, aes(x = SpareParts, y = SalePrice, label = Make)) +
  geom_point(color = "blue", shape = 17, size = 3) +
  geom_vline(xintercept = avg_SpareParts, linetype = "dashed") +
  geom_hline(yintercept = avg_SalePrice, linetype = "dashed") +
  geom_text(hjust = -0.1) +
  xlim(min(agg_data$SpareParts) * 0.9, max(agg_data$SpareParts) * 1.1) +
  scale_y_continuous(breaks = seq(0, max(agg_data$SalePrice), by = 40000), labels = format_labels) +
  scale_x_continuous(breaks = seq(0, max(agg_data$SpareParts), by = 20000), labels = format_labels) +
  labs(title = "Average Sale Price vs. Average Spare Parts Cost",
       x = "avg_SpareParts", y = "avg_SalePrice") +
  theme_minimal()
print(plot5_3)
#
# Scatter plot 5_4: Labor Cost vs. Spare Parts Cost with regression line
# 
plot5_4 <- ggplot(agg_data, aes(x = LaborCost, y = SpareParts, label = Make)) +
  geom_point(color = "blue", fill = "red", shape = 21, size = 3, stroke = 1) +
  geom_smooth(method = "lm", color = "black", linetype = "solid") +
  geom_vline(xintercept = avg_LaborCost, linetype = "dashed") +
  geom_hline(yintercept = avg_SpareParts, linetype = "dashed") +
  geom_text(vjust = -0.6) +
  ylim(min(agg_data$SpareParts) * 0.9, max(agg_data$SpareParts) * 1.1) +
  scale_x_continuous(breaks = seq(0, max(agg_data$LaborCost), by = 20000), labels = format_labels) +
  scale_y_continuous(breaks = seq(0, max(agg_data$SpareParts), by = 20000), labels = format_labels) +
  labs(title = "Average Labor Cost vs. Average Spare Parts Cost",
       x = "avg_LaborCost", y = "avg_SpareParts") +
  theme_minimal()
print(plot5_4)

