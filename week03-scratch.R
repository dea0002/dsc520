library(ggplot2)
library(tidyverse) 
library(dplyr)

sales_raw <- read_csv("~/dev/msds/dsc520/sales_data_sample.csv") 

sales_cleaned <- sales_raw %>% mutate(
  Product = as.factor(Product),  
  Region = as.factor(Region),  
  OrderDate = as.factor(as.Date(OrderDate, format = "%m/%d/%Y"))
) 

glimpse(sales_cleaned)

mean_sales <- mean(sales_cleaned$TotalSales)
paste0("Mean Total Sales: $", round(mean_sales, 2)) 

# ggplot(sales_cleaned, aes(x = sales_cleaned$TotalSales)) + 
#   geom_histogram(binwidth = 2, fill = "skyblue", color = "white") +
#   labs(title = "Mean Total Sales", x = "Total Sales", y = "Mean") +
#   theme_minimal()
# 
# hist(sales_cleaned$TotalSales) 
# 
# # Calculate the mean
# # mean_val <- mean(data$rainfall, na.rm = TRUE)
# 
# # Render the distribution with the mean overlaid
# ggplot(sales_cleaned, aes(x = TotalSales)) +
#   geom_histogram(binwidth = 2, fill = "skyblue", color = "white", alpha = 0.8) +
#   geom_vline(aes(xintercept = mean_sales), 
#              color = "red", linetype = "dashed", linewidth = 1) +
#   annotate("text", x = mean_sales, y = Inf, label = paste("Mean:", round(mean_sales, 2)), 
#            vjust = 2, hjust = -0.1, color = "red", fontface = "bold") +
#   labs(
#     title = "Rainfall Distribution with Mean",
#     x = "Rainfall",
#     y = "Frequency"
#   ) +
#   theme_minimal()
