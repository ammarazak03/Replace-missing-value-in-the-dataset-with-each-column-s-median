detect_and_replace_missing_value <- function(data) {
  missing_counts <- colSums(is.na(data))# Detect missing values
  
  # Replace the missing values with the median of each column in the dataset
  for (col in colnames(data)) {
    data[[col]][is.na(data[[col]])] <- median(data[[col]], na.rm = TRUE)
  }
  return(list(missing_counts = missing_counts, modified_data = data)) # Return the missing counts and the modified dataset
}

adjusted_data<-detect_and_replace_missing_value(data_with_na)#insert your data frame in the bracket
adjusted_data # check your data if there is no missing value

