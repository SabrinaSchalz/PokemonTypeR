#PokemonTypeR

library(PokemonTypeR)
library(shiny)

server <- function(input, output) {

output$opponent_type <- renderText({
    answer1 <- (input$type)
    type(answer1)
  })

output$opponent_name <- renderText({
    answer2 <- (input$name)
    name(answer2)
  })

output$share_type <- renderText({
    answer3 <- (input$share)
    share(answer3)
  })

output$example_name <- renderText({
    answer4 <- (input$example)
    example_P(answer4)
  })

}

# Run the app ----
shinyApp(ui = ui, server = server)
