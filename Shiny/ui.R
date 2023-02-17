#PokemonTypeR

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
p(em("ignore the error message below")),
width = 7),
    mainPanel("")
  ),

   fluidRow(
    
    column(3, 
           textInput("type", h3("Opponent Type"), 
                     value = "")),
    column(3, 
           textInput("name", h3("Opponent Pokemon"), 
                     value = "")),

    column(3, 
           textInput("share", h3("% of Pokemon With Type"), 
                     value = "")),

    column(3, 
           textInput("example", h3("Example Pokemon"), 
                     value = ""))

 ),

mainPanel(
      textOutput("opponent_type"),
      textOutput("opponent_name"),
	textOutput("share_type"),
      textOutput("example_name")
    )
  )

