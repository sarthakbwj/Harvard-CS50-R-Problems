# Read the tests.tsv file into a data frame
tests <- read.delim("tests.tsv", sep = "\t", header = TRUE)

# Convert the 'gender' column to a text representation
# Assuming 1 is Male and 2 is Female (based on the codebook.txt)
tests$gender <- ifelse(tests$gender == 1, "Male", "Female")

# Function to compute Big 5 personality trait scores
compute_trait_score <- function(trait_columns) {
  # Sum the values for the trait columns
  trait_sum <- rowSums(tests[, trait_columns], na.rm = TRUE)
  # Max possible sum for each trait (3 questions per trait, each with max score of 5)
  max_sum <- 15
  # Compute the score as a percentage of the maximum possible sum
  trait_score <- trait_sum / max_sum
  return(round(trait_score, 2))
}

# Compute the Big 5 personality trait scores
# Extroversion (E1, E2, E3)
tests$extroversion <- compute_trait_score(c("E1", "E2", "E3"))

# Neuroticism (N1, N2, N3)
tests$neuroticism <- compute_trait_score(c("N1", "N2", "N3"))

# Agreeableness (A1, A2, A3)
tests$agreeableness <- compute_trait_score(c("A1", "A2", "A3"))

# Conscientiousness (C1, C2, C3)
tests$conscientiousness <- compute_trait_score(c("C1", "C2", "C3"))

# Openness (O1, O2, O3)
tests$openness <- compute_trait_score(c("O1", "O2", "O3"))

# Write the resulting data frame to a new CSV file
write.csv(tests, "analysis.csv", row.names = FALSE)


