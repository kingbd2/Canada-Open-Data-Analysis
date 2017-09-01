library("tidyverse")
library("readxl")
library("readr")

#Read xlsx data
read_xlsx(path, sheet = NULL, range = NULL, col_names = TRUE,
          col_types = NULL, na = "", trim_ws = TRUE, skip = 0, n_max = Inf,
          guess_max = min(1000, n_max))

inv_data<-read_xlsx("inventory2.xlsx", sheet = "Sheet1", range = "A4:C51")

#List all sheets
excel_sheets("inventory2.xlsx")

ggplot(inv_data, aes(x = log(inv_data$'Sum of size'), y = log(inv_data$`Count of title_en`), label = factor(inv_data$'Row Labels'))) +
  geom_point() +
  geom_text(nudge_x = 1, nudge_y = 1, check_overlap = TRUE, size = 3)

