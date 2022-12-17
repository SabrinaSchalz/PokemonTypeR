#'Recommendation based on opponent's type

#' @description
#' The type function takes the opponent's type as input, e.g. type("fire")
#'   and then returns a list of recommended counter types
#'   either based on strong defence or strong attack matches

#' @param input write the "type" of your opponents Pokemon

#' @return types that are strong against your inputted type

#' @export
type <- function(input) {
 strong_defence <- daten[daten$Against_Type == input & daten$Strength == "strong" | daten$Against_Type == input & daten$Strength == "resistant", ]
  strong_defence <- strong_defence$Own_Type
 strong_attack <- daten[daten$Own_Type == input & daten$Strength == "weak", ]
  strong_attack <- strong_attack$Against_Type
 recommendation <- c(strong_attack, strong_defence)
   return(unique(recommendation))
}

