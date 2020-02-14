# Imports the data from CSV into a Dataframe (DF)
#' @title Imports Data from csv file and stores it in a df.
#' @description This function reads the data from a csv-file and returns it as a DataFrame-object.
#' @details This functions downloads the train.csv file from the package to the user's local and creates a dataframe.
#' @return This function returns the  dafaframe after its created.
#' @import readr
#' @examples import_data()
#' @export
import_data <- function() {

        #importing data from file.
        df = readr::read_csv(system.file("extdata", "train.csv", package="MidDatAnalysis"))

        #creating a .rda file with the df dataframe.
        usethis::use_data(df,overwrite = TRUE)

        #returning the main dataset df.
         return(df)

}
