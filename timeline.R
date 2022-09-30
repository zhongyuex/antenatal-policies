library(timevis)
Timeline <- read.csv("Timeline.csv")

data = data.frame(
  content = Timeline$content,
  start   = Timeline$start,
  end     = Timeline$end,
  group   = Timeline$group)

timevis(data,
        groups = data.frame(id = 1:5,
                            content = c("Telehealth",
                                        "Screening Visits",
                                        "Personal Protective Equipment",
                                        "Other Guidelines",
                                        "Pandemic Milestones in Victoria")
                            )
)

