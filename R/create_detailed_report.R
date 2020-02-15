# Create Detailed Report
#' @title  Function to create a detailed report of the data.
#' @description This function uses DataExporer package and create a detailed report of all the data present int the data frame
#' @return imports the data from the file and runs the shiny app.
#' @examples create_detailed_report()
#' @import DataExplorer
#' @export
create_detailed_report <- function(){
        df <-MidDatAnalysis::titanic_data
        create_report(df)
}
