#' Recommendation based on opponent's Pokemon's name

#' @description
#' The name function takes the opponent's Pokemon's name as input,
#'  e.g. type("Pikachu") and then returns a list of recommended counter types
#'  either based on strong defence or strong attack matches

#' @param input write the "name" of your opponents Pokemon

#' @return types that are strong against your opponents Pokemons type

#' @export
name <- function(input) {
 name_type <- daten[daten$name == input, ]
 name_type <- name_type$Own_Type
 name_type <- unique(name_type)
 name_defence <- daten[daten$Against_Type == name_type & daten$Strength == "strong" | daten$Against_Type == name_type & daten$Strength == "resistant", ]
  name_defence <- name_defence$Own_Type
 name_attack <- daten[daten$name == input & daten$Strength == "weak", ]
  name_attack <- name_attack$Against_Type
 recommendation_name <- c(name_attack, name_defence)
   return(unique(recommendation_name))
}