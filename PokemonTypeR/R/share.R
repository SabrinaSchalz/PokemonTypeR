#' Share of Pokemon With A Given Type

#' @description
#' The share function takes your own type as input, e.g. type("fire")
#'   and then returns a percentage of how common this type is, e.g.
#'   how many % of Pokemon have this type
#'   either based on strong defence or strong attack matches

#' @param input write the "type" for which you want the share of Pokemon
#'   that have this type

#' @return the percentage of Pokemon who have the inputted type

#' @export
share <- function(input) {
 share_type <- daten[daten$Own_Type == input, ]
 share <- share_type$Share
   return(unique(share))
}
