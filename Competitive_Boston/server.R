
library(shiny)


shinyServer(function(input, output) {

  output$elevation_profile <- renderPlotly({
    
   elevation %>% 
      ggplot( aes(x = Mileage)) +
      geom_area(fill="#00A5FF", aes(y = `Elevation in feet`)) +
      scale_x_continuous(breaks = scales::pretty_breaks(n = 27)) +
      scale_y_continuous(breaks = scales::pretty_breaks(n = 3)) +
      labs(y="Elevation [ft]", x="Distance [mi]")
    
  }) #close renderPlot
  
 output$requaly_years <- renderPlotly({
    
    requaly <- ggplot(requalified_2019std, aes(x=Year, fill = Gender, alpha = 0.1)) +
      geom_bar(position = "dodge") +
      geom_bar(data = requalified_2020std, position = "dodge", aes(x=Year, fill=Gender, color = Gender)) +
      theme(axis.text.x=element_text(angle = 45, hjust = 1)) +
      labs(y = "Number of Runners", x ="Year") +
      scale_fill_manual(values=c("#F8766D", "#00A5FF")) +
      scale_y_continuous(breaks = scales::pretty_breaks(n = 7)) +
      scale_x_continuous(breaks = scales::pretty_breaks(n = 6)) +
      guides(fill=guide_legend(title="Gender"),
             alpha=FALSE)
    
  }) #close renderPlot
 
output$qualy <- renderPlotly({
 
  qualification <- ggplot(standards_2019, aes(x = Age_Group, y = Time, fill=Gender, alpha = 0.1)) +
      geom_bar(position="dodge", stat = "identity") +
      geom_bar(data = standards_2020, position = "dodge", stat = "identity", aes(x=Age_Group, fill=Gender, color = Gender)) +
      theme(axis.text.x=element_text(angle = 45, hjust = 1)) +
      labs(x="Age Group",y ="Qualifying Time [hh:mm:ss]") +
      scale_fill_manual(values=c("#F8766D", "#00A5FF"))
      #guides(fill=guide_legend(title="Gender"),
             #alpha=FALSE)
 
  }) #close renderPlot

output$accepted <- renderPlotly({
  
  acceptance <- ggplot(cut_off_years, aes(x = Year, y = Cut_Off, fill=Non_Qualifiers, label = Non_Qualifiers)) +
    geom_bar(stat = "identity") +
    scale_x_continuous(breaks = scales::pretty_breaks(n = 8)) +
    geom_text(size = 3, color= "#FFFFFF", position = position_stack(vjust = 0.5)) +
    guides(fill=guide_legend(title="Non-Qualifiers"),size=FALSE) +
    coord_flip() +
    labs(y = "Average Cut-Off Times [hh:mm:ss]",x ="Year")
  
  }) #close renderPlot

output$requaly_per_year <- renderPlotly({

  data_old <- requalified_2019std %>% 
    filter(Year == input$year)
  
  data_new <- requalified_2020std %>% 
    filter(Year == input$year)
  
plot <- ggplot(data_old, aes(x=Age_Group, fill = Gender, alpha = 0.1)) +
   geom_bar(position = "dodge") +
   geom_bar(data = data_new, position = "dodge", aes(x=Age_Group, fill=Gender, color = Gender)) +
   theme(axis.text.x=element_text(angle = 45, hjust = 1)) +
   labs(y = "Number of Runners", x ="Age Group"
       #title = "2019 Boston Marathon Re-qualifiers by 2013-19 & 2020 Standards"
   ) +
   scale_fill_manual(values=c("#F8766D", "#00A5FF")) +
   scale_y_continuous(breaks = scales::pretty_breaks(n = 7))
   #guides(fill=guide_legend(title="Gender")),
        #alpha=FALSE)
 
}) #close renderPlot

output$plot2 <- renderPlotly({
  
  #output$value <- renderPrint({ input$checkGroup })
  
  data_age <- strategic_2019 %>% 
    filter(Age_Group == input$age_group)
  
 plotted2 <- ggplot(data_age, aes(Half, Half_2, alpha=0.5)) +
    geom_point(stat = "identity", aes(color= Gender)) +
    scale_color_manual(values=c("#F8766D", "#00A5FF")) +
    labs(x ="First Half Time[hh:mm]", y = "Second Half Time [hrs]") +
    guides(alpha=FALSE)
  
}) #close renderPlot
 
}) #close shinyServer
