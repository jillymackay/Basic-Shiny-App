# This is where the data processing happens


library(shiny)
library(tidyverse)




shinyServer(func(input, output, session)) {
  
  # --------------- Creating things -------
  
 
  output$rand_name <- renderText(input$name1)
  
  
  
  # ---------- Plots
  
  
  output$plot1 <- renderPlot({
    
  mpg %>% 
      ggplot(aes(x = as.factor(cyl), y = hwy)) +
      geom_boxplot()
  }
  )
  
  output$plot2 <- renderPlot({
    mpg %>% 
      ggplot(aes(x = as.factor(trans), y = hwy)) +
      geom_boxplot()
  })
  
  output$plot3 <- renderPlot({
    mpg %>% 
      ggplot(aes(x = cty, y = hwy)) +
      geom_point()
  })
}