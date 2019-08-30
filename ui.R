

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calculate total calories burned"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    
    sidebarPanel(
       h5("One of the biggest aspects about a workout is calculating the calories"),
  
       h5("Number of calories burned primarly depend on 4 factors "),
      
        sliderInput("age",
                   "Please select your age:",
                   min = 1,
                   max = 120,
                   value = 30),
    
      sliderInput("Wt",
                  "Please enter weight in pounds:",
                  min = 100,
                  max = 500,
                  value = 300),
      
      h5("For heartrate, take the average over that period of time"),
  
      sliderInput("hr",
                  "Please select your heart rate:",
                  min = 40,
                  max = 200,
                  value = 72),
  
      sliderInput("time",
                  "Please select your time in mins:",
                  min = 1,
                  max = 1000,
                  value = 30)
  ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h5("Heart rate is an important factor is determining the calories burned"),
       h5("The best advantage of using heart rate is that it's independent from the type of the activity"),
       
       h4("Total estimate number of calories burned in Kcals :"),
      
       textOutput("cals"),
      
       h5("Note: The formula is derived from an unidentified source in quora")
       
    )
  )
))
