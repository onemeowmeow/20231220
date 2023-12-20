library(shiny)

shinyUI(navbarPage("Basic widgets example", 
  tabPanel("Simple widgets",
           fluidRow(
             column(4,
                    h3("Submit Button"),
                    actionButton("action1", label = "Action"),
                    br(),
                    br(),
                    verbatimTextOutput("action2")
                    ),
             column(4,
                    h3("Single checkbox"),
                    checkboxInput("checkbox1", label = "Choice A"),
                    br(),
                    br(),
                    verbatimTextOutput("checkbox2")
                    ),
             column(4,
                    h3("Date input"),
                    dateInput("date1", label = "", value = "2016-01-01"),
                    br(),
                    br(),
                    verbatimTextOutput("date2")
                    )  
           ),
           hr(),
           fluidRow(
             column(4,
                    h3("File input"),
                    fileInput("file1", label = ""),
                    br(),
                    br(),
                    verbatimTextOutput("file2")
             ),
             column(4,
                    h3("Checkbox group"),
                    checkboxGroupInput("checkGroup1", label = "", 
                                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                       selected = c(1, 2)),
                    br(),
                    br(),
                    verbatimTextOutput("checkGroup2")
             ),
             column(4,
                    h3("Date range"),
                    dateRangeInput("dates1", label = "", start = "2016-01-01", end = "2016-03-31"),
                    br(),
                    br(),
                    verbatimTextOutput("dates2")
             )  
           ),
           hr(),
           fluidRow(
             column(3,
                    h3("Data download"),
                    downloadButton("download2", label = "Download Data", class = NULL)
             ),
             column(3,
                    h3("Radio buttons"),
                    radioButtons("radio1", label = "",
                                 choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                 selected = 1),
                    br(),
                    br(),
                    verbatimTextOutput("radio2")
             ),
             column(3,
                    h3("Text input"),
                    textInput("text1", label = "", value = "Enter text..."),
                    br(),
                    br(),
                    verbatimTextOutput("text2")
             ),
             column(3,
                    h3("Numeric input"),
                    numericInput("num1", label = "", value = 1),
                    br(),
                    br(),
                    verbatimTextOutput("num2")
             )  
           )

           ),
  tabPanel("Complex widgets",
           h2("Sliders"),
           fluidRow(
             column(4,
                    h3("Single slider"),
                    sliderInput("singleslider1", label = "", min = 0, max = 100, value = 50),
                    br(),
                    br(),
                    verbatimTextOutput("singleslider2")
             ),
             column(4,
                    h3("Ranged slider"),
                    sliderInput("rangedslider1", label = "",  min = 0, max = 100, value = c(25, 75)),
                    br(),
                    verbatimTextOutput("rangedslider2")
             ),
             column(4,
                    h3("Looping slider"),
                    sliderInput("loopingslider1", label = "",  min = 0, max = 100, value = 10,
                                animate = animationOptions(interval=200, loop=TRUE)),
                    br(),
                    br(),
                    verbatimTextOutput("loopingslider2")
             )  
           ),
           h2("Select boxs"),
           fluidRow(
             column(3,
                    h3("Single select box (1)"),
                    selectInput("singleselect1_1", label = "", 
                                choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                selected = 1),
                    br(),
                    br(),
                    verbatimTextOutput("singleselect1_2")
             ),
             column(3,
                    h3("Single select box (2)"),
                    selectInput("singleselect2_1", label = "", 
                                choices = list("Choice..." = "", "Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                selected = "", selectize=TRUE),
                    br(),
                    br(),
                    verbatimTextOutput("singleselect2_2")
             ),
             column(3,
                    h3("Multiple select box (1)"),
                    selectInput("multipleselect1_1", label = "", 
                                choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                selected = NULL, multiple=TRUE, selectize=FALSE),
                    br(),
                    br(),
                    verbatimTextOutput("multipleselect1_2")
             ),
             column(3,
                    h3("Multiple select box (2)"),
                    selectInput("multipleselect2_1", label = "", 
                                choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                selected = NULL, multiple=TRUE, selectize=TRUE),
                    br(),
                    br(),
                    verbatimTextOutput("multipleselect2_2")
             )  
           )
  )
))