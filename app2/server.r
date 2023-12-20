library(shiny)

shinyServer(function(input, output) {
  
  DATA = reactive({
    if (is.null(input$files)) {return()} else {
      if(input$action1==0){return()}else{                 #新增一個使用者按鈕，按下action後才可以顯示畫布
        dat = read.table(input$files$datapath,header=T)
        return(dat)
      }
    }
  })
  
  output$scatterPlot = renderPlot({    #詢問dat若不為空值，則利用renderPlo繪圖
    dat = DATA()
    if (is.null(dat)) {return()} else {
      plot(dat,col=input$Color)
    }
  })
  
  output$download = downloadHandler(
    filename = function() {'plot.pdf'},   #取檔名
    content = function(con) {
      dat = DATA()
      if (is.null(dat)) {return()} else {   #詢問dat若不為空值，則
        pdf(con)                            #開啟PDF畫布
        plot(dat,col=input$Color)           #利用plot繪圖
        dev.off()                           #關閉畫布
      }
    }
  )
  
})