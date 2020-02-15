# Imports the data from CSV into a Dataframe
#' @title Imports Data from csv file and stores it in a dataframe.
#' @description This function reads the data from a csv-file and returns the  package data.
#' @details This functions downloads the train.csv file from the package to the user's local and creates a dataframe.
#' @return This function returns the  package data after its created.
#' @examples import_data()
#' @export
import_data <- function() {
        #importing data from file.
        library(usethis)
        titanic_data <- read.csv(system.file("extdata", "train.csv", package="MidDatAnalysis"))


        # as for this dataset we have a lot of missing values for the Age feature
        # we will be using the locf(last observation carried forward) function from Zoo package
        # to fill the NA values.

        titanic_data <- zoo::na.locf(titanic_data)



        #returning the main dataset df.
        return(titanic_data)
}
