# Runs the shiny app
#' @title Shiny app function.
#' @description This function runs the shiny app to display the analysis.
#' @return Shiny app with the titanic data analysis and plots.
#' @import ggplot2
#' @examples run_shiny_app()
#' @export

run_shiny_app<- function(){

        loc_shiny <- system.file("shiny", "SurivalGraphs",package = "MidDatAnalysis")
        if (loc_shiny == "") {
                stop(" MidDatAnalysis was not found. Please reinstall `MidDatAnalysis`.", call. = FALSE)
        }

        shiny::runApp(loc_shiny, display.mode = "normal", launch.browser = T)

}

