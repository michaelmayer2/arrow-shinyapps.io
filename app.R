library(shiny)
library(arrow)

shinyApp(
  ui = basicPage(
    verbatimTextOutput("verb")
  ),
  server = function(input, output) {
    test<-codec_is_available("snappy")
    #sess<-sessionInfo("rsconnect")
    test<-paste("is snappy available: ",test, "\n",system("apt list | grep snappy", intern=TRUE))
    output$verb <- renderText({ test })
  }
)
