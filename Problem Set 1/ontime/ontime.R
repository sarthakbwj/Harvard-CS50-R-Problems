library(dplyr)

bus <- read.csv("/Users/sarthakbwj/Documents/GitHub/Harvard-CS50-R-Problems/Problem Set 1/ontime/bus.csv")
rail <- read.csv("/Users/sarthakbwj/Documents/GitHub/Harvard-CS50-R-Problems/Problem Set 1/ontime/rail.csv")

# Define valid routes
valid_routes <- c(bus$route, rail$route)
peak <- c()
non_peak <- c()

repeat {
  # Prompt the user for a route
  route <- readline(prompt = "Route: ")
    if (peak %in% route){
      return(peak)
    }
    else{
      return(non_peak)
    }
  
  # Check if the route is valid
  if (route %in% valid_routes) {
    break  # Exit the loop if a valid route is entered
  } else {
    message("Invalid route. Please enter a valid route.")
  }
}