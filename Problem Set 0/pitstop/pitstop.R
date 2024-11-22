# Load necessary library
library(readr)

# Prompt user for the CSV file name
file_name <- readline(prompt = "Enter the CSV file name: ")

# Read CSV file
data <- read_csv(file_name)

# Calculate the required information
total_pit_stops <- nrow(data)  # Total number of pit stops
shortest_pit_stop <- min(data$time)  # Duration of the shortest pit stop
longest_pit_stop <- max(data$time)  # Duration of the longest pit stop
total_time_spent <- sum(data$time)  # Total time spent on pit stops

# Output the results
cat("Total number of pit stops: ", total_pit_stops, "\n")
cat("Shortest pit stop duration: ", shortest_pit_stop, " seconds\n")
cat("Longest pit stop duration: ", longest_pit_stop, " seconds\n")
cat("Total time spent on pit stops: ", total_time_spent, " seconds\n")
