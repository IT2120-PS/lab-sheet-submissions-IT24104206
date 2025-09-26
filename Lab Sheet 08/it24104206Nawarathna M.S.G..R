# Set working directory to the location of the dataset
setwd("C://Users//IT24104206//Downloads//Lab 08-20250926")
getwd()  # Confirm the working director

#importing dataset
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
head(data)# Display the first few rows of the dataset

# Extracting the 'Weight' column from the dataset
weights <- data$Weight
weights# Display all weight value

# Q1: Calculating population parameter
pop_mean <- mean(weights)# Population mean of laptop weigh
pop_mean

# Population standard deviation of laptop weights
pop_sd <- sd(weights)
pop_sd

# Q2: Simulating 25 samples of size 6 with replacemen

set.seed(123)   # Set seed for reproducibility
sample_means <- numeric(25)# Initialize vector to store sample means
sample_sds <- numeric(25)# Calculate sample standard deviation

for (i in 1:25) {
  sample_data <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
  cat("Sample", i, "- Mean:", sample_means[i], " SD:", sample_sds[i], "\n")
}

# Q3: Analyzing the distribution of sample means
mean_of_sample_means <- mean(sample_means)# Mean of sample mean
mean_of_sample_means


sd_of_sample_means <- sd(sample_means)# Standard deviation of sample mean
sd_of_sample_means

#comparing 
popmn <- mean(weights)# Population mean         
popstd <- sd(weights) # Population standard deviation         

samplemn <- mean(sample_means)  # Mean of sample mean
samplestd <- sd(sample_means)  # Standard deviation of sample mean

popmn
samplemn
popstd
samplestd





