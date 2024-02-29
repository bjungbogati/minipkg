#' Current time
#'
#' Returns a sentence with the current time
#'
#' @param language Language either "fr" (French) or "en" (English)
#'
#' @return A character string
#' @export
#'
#' @examples
#' what_time()

what_time <- function(language = "fr") {


  if(rlang::is_installed("praise")){

    "PRAISE is installed"

  } else {

    "PRAISE is not installed"

  }

  rlang::arg_match0(language, c("fr", "en"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    fr = sprintf("%s! Il est maintenant %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time)
  )
}
