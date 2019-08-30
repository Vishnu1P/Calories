
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$cals <-  ( reactive
                           ({
    ((input$age*0.2017)
     +(input$Wt*0.09036)+
       (input$hr*0.6309)
     -55.0969)*input$time/4.184
    
  })
  )
})
