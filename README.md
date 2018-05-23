# Getting-and-Cleaning-Data-Course-Project
---
## Instructions
To use the run_analysis.R file, simply use RStudio or R console to run the script.

To code will do the following in sequence:

1. Download the dataset from the URL provided by project description
2. Load all the feature names and rename the features for ease-of-read
3. Read and merge training data and testing data (10299 obs of 563 variables including subject label and activity label)
4. Set the column names of the merged data into the feature names from step 2
5. A subset of variables that we primarily concerened will be extracted (88 variables including the angle variables)
6. Activity labels then transformed into literal meaning of each value
7. Mean or avg is calculated on every measurement based on a combined factor of subject and activity
8. Resulting tidy data is saved to a csv file named tidyUCIData.csv