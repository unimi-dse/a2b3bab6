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
        b <-usethis::use_data(df,overwrite = TRUE)

        #creating a list to store both the variables,df and b.
        b_df <- list(df,b)


        #returning the list. This will create the df and also create the rda file at the same time.Whic will make df avaiable for the other functions.
         return(b_df)

}
