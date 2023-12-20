library(shiny)

shinyServer(function(input, output) {
  
  output$action2 = renderPrint({
    print(input$action1)
  })
  
  output$checkbox2 = renderPrint({
    print(input$checkbox1)
  })
  
  output$date2 = renderPrint({
    print(input$date1)
  })
  
  output$file2 = renderPrint({
    print(input$file1$datapath)
  })
  
  output$checkGroup2 = renderPrint({
    print(input$checkGroup1)
  })
  
  output$dates2 = renderPrint({
    print(input$dates1)
  })
  
  output$download2 <- downloadHandler(
    filename = function() {'data.csv'},
    content = function(con) {
      data("cars")
      write.csv(dat, con)
    }
  )  
  
  output$radio2 = renderPrint({
    print(input$radio1)
  })
  
  output$text2 = renderPrint({
    print(input$text1)
  })
  
  output$num2 = renderPrint({
    print(input$num1)
  })
  
  output$singleslider2 = renderPrint({
    print(input$singleslider1)
  })
  
  output$rangedslider2 = renderPrint({
    print(input$rangedslider1)
  })
  
  output$loopingslider2 = renderPrint({
    print(input$loopingslider1)
  })
  
  output$singleselect1_2 = renderPrint({
    print(input$singleselect1_1)
  })
  
  output$singleselect2_2 = renderPrint({
    print(input$singleselect2_1)
  })
  output$multipleselect1_2 = renderPrint({
    print(input$multipleselect1_1)
  })
  
  output$multipleselect2_2 = renderPrint({
    print(input$multipleselect2_1)
  })
  
})