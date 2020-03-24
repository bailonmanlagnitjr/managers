add_percent <- function(my_number)
{
  percent <- round(my_number * 100, digits = 1)
  result <- paste(percent, "%", sep = "")
  return(result)
}
sample_vector <- c(0.458, 1.663, 0.8654)
add_percent(sample_vector)

add_percent <- function(my_number, multiplier, no_digits)
{
  percent <- round(my_number * multiplier, digits = no_digits)
  result <- paste(percent, "%", sep = "")
  return(result)
}
sample_vector <- c(0.458, 1.663, 0.8654)
my_result <- add_percent(sample_vector, 2, 3)
my_result

my_stats <- function(values, parametric = TRUE, allow_print = FALSE)
{
  if (parametric)
  {
    central_tendency <- mean(values)
    spread <- sd(values)
  }
  else
  {
    central_tendency <- median(values)
    spread <- mad(values)
  }
  if (allow_print == TRUE & parametric == TRUE)
  {
    #construct relevant output
    cat("Mean = ", central_tendency, "\n", "SD = ", spread, "\n")
  }
  else if (allow_print & !parametric)
  {
    cat("Median = ", central_tendency, "\n", "MAD = ", spread, "\n")
  }
}
sample_vector <- c(0.458, 1.663, 0.8654)
result <- my_stats(sample_vector, FALSE, TRUE)
