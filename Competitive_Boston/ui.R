library(shiny)
library(shinythemes)

shinyUI(
    fluidPage(
        theme = "mytheme.css",
            #shinythemes::shinytheme('cerulean'),
        dashboardPage(
            skin = 'blue',
            dashboardHeader(title = 'Competitive Boston'),
            dashboardSidebar(
                sidebarMenu(
                    actionLink(inputId='ab1', label="Bettina Kozissnik", 
                               icon = icon("github"), 
                               onclick ="window.open('https://github.com/kozissnikb', '_blank')"),
                    br(),
                    br(),
                    menuItem(HTML('<img src="unicorn-head-solid.png" height="25" width="25"> &nbsp&nbsp Overview'), tabName = 'overview'),
                    menuItem(HTML('<img src="stopwatch-solid.png" height="25" width="25"> &nbsp&nbsp Qualifying'), tabName = 'qualify'),
                    menuItem(HTML('<img src="calendar-check-solid.png" height="25" width="25"> &nbsp&nbsp Re-Qualifying'), tabName = 're-qualify'),
                    menuItem(HTML('<img src="running-solid.png" height="25" width="25"> &nbsp&nbsp Strategies'), tabName = 'success'),
                    br(),
                    #h5("For more information:"),
                    actionLink(inputId='ab2',
                               HTML('<img src="BostonLogo.png" height="175", width="175">'),
                               onclick = "window.open('https://www.baa.org', '_blank')")
                )),
            dashboardBody(
                tabItems(
                    tabItem(tabName = 'overview',
                            title = '', status = 'primary', solidHeader = TRUE, width=3,
                            h3('The Boston Marathon Phenomenon'),
                            fluidRow(
                                box(title = "Elevation Profile:", status = 'primary', solidHeader = TRUE, width = 12, height=235,
                                plotlyOutput("elevation_profile", height=175)  
                                
                               )
                                    
                                    
                                 # close box
                               
                                
                                   # selectInput('state', label = NULL,
                                                #choices = medicaid$State,
                                                #selected = 'Tennessee')
                             # close box
                                #infoBoxOutput("medicaid_box",width=5)
                            ) #close fluidRow
                   # ), #close tabItem
                    #tabItem(tabName = 'data',
                            #title = 'Data', status = 'primary', solidHeader = TRUE, width=3,
                           # h3('Data Sources'),
                            #br(),
                           # cdc <- a('CDC WONDER', href= "https://wonder.cdc.gov/", target = "_blank"),
                            #br(),
                            #bls <- a('Kaiser Family Foundation', href= "https://www.kff.org/", target = "_blank"),
                           # br(),
                            #twitter <- a('Healthcare Twitter Analysis', href= "http://healthcare-twitter-analysis.com.s3-website-us-west-1.amazonaws.com/", target = "_blank")
                            
                    ) #close tabItem
                ) #close tabItems
            ) #close dashboardBody
        ) #close dashboardPage
    ) #close fluidPage
) #close shinyUI