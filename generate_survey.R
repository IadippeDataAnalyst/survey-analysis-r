# Generates a synthetic employee satisfaction survey dataset
# Simulates real survey data with missing responses and Likert-scale questions

set.seed(42)

n_employees <- 250

departments <- c("Engineering", "Sales", "Marketing", "HR", "Operations", "Finance")
tenures <- c("<1 year", "1-3 years", "3-5 years", "5+ years")
work_modes <- c("Remote", "Hybrid", "On-site")

# Generate survey data
survey <- data.frame(
  employee_id = sprintf("EMP%04d", 1:n_employees),
  department = sample(departments, n_employees, replace = TRUE, 
                      prob = c(0.3, 0.2, 0.15, 0.1, 0.15, 0.1)),
  tenure = sample(tenures, n_employees, replace = TRUE,
                  prob = c(0.25, 0.35, 0.25, 0.15)),
  work_mode = sample(work_modes, n_employees, replace = TRUE,
                     prob = c(0.35, 0.45, 0.2)),
  
  # Likert scale questions (1=Strongly Disagree, 5=Strongly Agree)
  q1_satisfaction = sample(1:5, n_employees, replace = TRUE, 
                           prob = c(0.05, 0.10, 0.20, 0.40, 0.25)),
  q2_worklife_balance = sample(1:5, n_employees, replace = TRUE,
                               prob = c(0.08, 0.15, 0.25, 0.30, 0.22)),
  q3_manager_support = sample(1:5, n_employees, replace = TRUE,
                              prob = c(0.06, 0.12, 0.22, 0.35, 0.25)),
  q4_career_growth = sample(1:5, n_employees, replace = TRUE,
                            prob = c(0.12, 0.18, 0.28, 0.25, 0.17)),
  q5_recommend = sample(1:5, n_employees, replace = TRUE,
                        prob = c(0.07, 0.13, 0.20, 0.35, 0.25)),
  
  salary_satisfaction = sample(1:5, n_employees, replace = TRUE,
                               prob = c(0.15, 0.20, 0.30, 0.25, 0.10)),
  
  would_refer_friend = sample(c("Yes", "No", "Maybe"), n_employees, 
                              replace = TRUE, prob = c(0.55, 0.20, 0.25))
)

# Add some realistic missing values
missing_rows_q4 <- sample(1:n_employees, size = 12)
survey$q4_career_growth[missing_rows_q4] <- NA

missing_rows_salary <- sample(1:n_employees, size = 8)
survey$salary_satisfaction[missing_rows_salary] <- NA

# Export
write.csv(survey, "employee_survey.csv", row.names = FALSE)

cat("Survey data generated: employee_survey.csv\n")
cat("Rows:", nrow(survey), "\n")
cat("Columns:", ncol(survey), "\n")
cat("Missing values in q4:", sum(is.na(survey$q4_career_growth)), "\n")
cat("Missing values in salary:", sum(is.na(survey$salary_satisfaction)), "\n")
