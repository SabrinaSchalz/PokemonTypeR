#' Examples of Pokemon With A Given Type

#' @description
#' The type function takes your own type as input, e.g. type("fire")
#'   and then returns a list of 3 randomly chosen Pokemon
#'   that have that type

#' @param input write the "type" for which you want examples

#' @return 3 Pokemon names that have your inputted type

#' @export
example_P <- function(input) {
 example_type <- daten[daten$Own_Type == input, ]
 example_type <- example_type$name
 example_type <- unique(example_type)
  return(sample(example_type, 3))
}
