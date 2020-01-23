library(shinydashboard)
library(shinythemes)
library(tidyverse)
library(ggplot2)
library(magrittr)
library(plotly)

options(scipen = 999, width = 65)

# load datsets

elevation <- read_csv("data/Elevation_Profile.csv")
requalified_2019std <- read_csv("data/requalified_2019std.csv")
requalified_2020std <- read_csv("data/requalified_2020std.csv")
standards_2019 <- read_csv("data/standards_long_2019.csv")
standards_2020 <- read_csv("data/standards_long_2020.csv")
cut_off_years <- read_csv("data/AcceptanceStats.csv")
strategic_2019 <- read_csv("data/strategic_2019.csv")