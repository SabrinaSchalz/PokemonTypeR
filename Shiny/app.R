#PokemonTypeR Shiny

library(PokemonTypeR)
library(shiny)

ui <- fluidPage(
  titlePanel("PokemonTypeR"),

  sidebarLayout(
    sidebarPanel(
p("1. Enter your opponent's Pokemon type in lower-case letters. This returns types with strong attack or defence against their type."),
p("2. Enter the name of your opponent's Pokemon with initial-upper case. This returns types with strong attack or defence against their type."),
p("3. Enter a Pokemon type in lower-case to get the percentage of Pokemon with that type."),
p("4. Enter a Pokemon type in lower-case to get 3 example Pokemon."),
width = 7),
    mainPanel("")
  ),

   fluidRow(
    
    column(3, 
           textInput("type", h3("Opponent Type"), 
                     value = "fire")),
    column(3, 
           textInput("name", h3("Opponent Pokemon"), 
                     value = "Vulpix")),

    column(3, 
           textInput("share", h3("% of Pokemon With Type"), 
                     value = "water")),

    column(3, 
           textInput("example", h3("Example Pokemon"), 
                     value = "water"))

 ),

mainPanel(
      textOutput("opponent_type"),
      textOutput("opponent_name"),
	textOutput("share_type"),
      textOutput("example_name")
    )
  )

# Define server logic ----
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

