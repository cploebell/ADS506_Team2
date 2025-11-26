source("R/setup.R")

# Pull ILINet national data
ili_raw <- ilinet(region = "national")

# Convert to tsibble
ili_ts <- ili_raw %>%
  mutate(week = yearweek(week_end)) %>% 
  as_tsibble(index = week)

# Save cleaned version for reproducibility
write_csv(ili_ts, "data/cleaned/ili_ts.csv")
