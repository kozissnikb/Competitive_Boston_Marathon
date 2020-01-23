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
                               onclick = "window.open('https://www.baa.org/races/boston-marathon', '_blank')")
                )),
               
            dashboardBody(
                tabItems(
                    tabItem(tabName = 'overview',
                            title = '', status = 'primary', solidHeader = TRUE, width=3,
                            h3('The Boston Marathon Phenomenon - An Analysis'),
                            fluidRow(column(width = 12,
                                            h5('The oldest marathon in the world is also the most competitive marathon to get to run. 
                                               Yes, in order to run Boston, you have to be a fast runner and it is getting 
                                               increasingly more difficult to qualify.'),
                                            HTML('<img src="course_map.png" height="700" width="1015">')
                                #box(title = "Elevation Profile:", status = 'primary', solidHeader = TRUE, width = 12, height=235,
                                #plotlyOutput("elevation_profile", height=175)  
                                
                               ), # close column
                             ) #close fluidRow
                             ), #close tabItem
                   
                    
                 tabItem(tabName = 'qualify',
                            title = '', status = 'primary', solidHeader = TRUE, width=3,
                            h3('Boston Qualifying Standards'),
                            fluidRow(
                                column(width = 6,
                                       box(title = "2013-19 vs 2020 Standards", width = NULL, status = 'primary', solidHeader = TRUE,  height=600, 
                                          plotlyOutput("qualy", height=425), br(),
                                          h5("Even though dropping the standard by 5 min over 26.2 miles does not seem like much 
                                          (approx. 12 sec/mile speed increase), it has a dramatic effect on the re-qualifying number of runners")
                                        )# close box
                                ),# close column
                                column(width = 6,
                                       box(title = "Real Cut-Off Times & Non-Qualifiers", width = NULL, status = 'primary', solidHeader = TRUE, height=600,
                                           plotlyOutput("accepted", height=425),br(),
                                           h5("In order to get one of the highly thought-after starting bibs for the Boston Marathon, one not only has to meet the 
                                           standard, but for 2020, the runner had to be 1:39 min faster then the already 5 min faster new 2020 standard. 
                                           So effectively, the runner had to be 6:39 faster, than the 2013-19 Standard.")
                                       )# close box
                                )# close column
                            ), #close fluidRow
                            #br(),
                            fluidRow(
                                column(width = 12,
                                      actionLink(inputId='ab4', label="Source - https://www.baa.org/races/boston-marathon/enter/qualify", 
                                      onclick ="window.open('https://www.baa.org/races/boston-marathon/enter/qualify', '_blank')")
                                )# close column
                             ) # close fluidRow
                            ), #close tabItem
                    
                 
                  tabItem(tabName = 're-qualify',
                         title = '', status = 'primary', solidHeader = TRUE, width=3,
                         h3('Re-Qualifying at the Boston Marathon'),
                         fluidRow(
                             #column(width = 6,
                             box(title = "Boston Re-qualifiers by 2013-19 & 2020 Standards", width = 12, status = 'primary', solidHeader = TRUE,  height=600,
                                  plotlyOutput("requaly_years", height=425), br(),
                                  h5("After 7 years for the Boston Marathon 2020 the Boston Athletic Association raised the qualifying standards by further
                                     dropping the qualifying times. 5 minutes in the context of 26.2 miles does not seem like much, but it has a dramatic effect 
                                     on the re-qualifying number of runners, especially considering the finishing times in earlier years.")
                             )# close box
                             #)# close column
                         ),
                         selectInput("year", label = h3("A Close-Up per Year"), 
                                    choices = list("2019" = 2019, "2018" = 2018, "2017" = 2017,"2016" = 2016,"2015" = 2015,"2014" = 2014), 
                                    selected = 1),
                        hr(),
                        fluidRow(
                             box(title = "Boston Re-qualifiers - A Close-up", width = 12, status = 'primary', solidHeader = TRUE,  height=500,
                                        plotlyOutput("requaly_per_year", height=425)  
                             )# close box
                         ) #close fluidRow
                  ), #close tabItem
                 
                 
                  tabItem(tabName = 'success',
                        title = '', status = 'primary', solidHeader = TRUE, width=3,
                        h3('Running Strategies to Re-qualify at the Boston Marathon'),
                        fluidRow(
                            column(width = 8,
                                  box(title = "Differing Strategies per Age Group", width = 12, status = 'primary', solidHeader = TRUE,  height=800,
                                  plotlyOutput("plot2", height=725)  
                                        
                                  )# close box
                                    
                            ), #close column
                            
                            column(width = 2,
                                   selectInput("age_group", label = h4("Age Group"), 
                                                      choices = list("18-34" = '18-34', "35-39" = '35-39', "40-44" = '40-44', "45-49" = '45-49', 
                                                                     "50-54" = '50-54', "55-59" = '55-59', "60-64" = '60-64', "65-69" = '65-69'),
                                                      selected = 1)
                           )# close column
                     ) #fluidRow
                ) #close tabItem
                ) #close tabItems
            ) #close dashboardBody
        ) #close dashboardPage
    ) #close fluidPage
) #close shinyUI