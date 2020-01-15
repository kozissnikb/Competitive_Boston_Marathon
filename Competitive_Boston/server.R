
library(shiny)


shinyServer(function(input, output) {

  output$elevation_profile <- renderPlotly({
    
   elevation %>% 
      ggplot( aes(x = Mileage)) +
      geom_area(fill="#00A5FF", aes(y = `Elevation in feet`)) +
      scale_x_continuous(breaks = scales::pretty_breaks(n = 27)) +
      scale_y_continuous(breaks = scales::pretty_breaks(n = 3)) +
      labs(y="Elevation [ft]", x="Distance [mi]")
      
    # ggplotly(plot = ggplot2::last_plot(), width = 800, height = 250)
    
        #output$medicaid_box <- renderInfoBox({
            #expanded <- medicaid %>% 
                #filter(State == input$state) %>%
                #select(Expanded)
           # if (expanded == TRUE) {
               # boxInput <- c('expanded', 'green','thumbs-up')
            #} else {
                #boxInput <- c('did not expand', 'red', 'thumbs-down')
            #}
            #infoBox(input$state , paste0(boxInput[1], ' Medicaid.'),
                    #color = boxInput[2],
                   # icon = icon(boxInput[3])
            #)
    
  }) #lclose renderPlot
}) # close shinyServer
