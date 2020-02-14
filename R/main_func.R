# Main Function
#' @title Main Function to call sub functions
#' @description This function is called to invoke all the other functions.
#' @return imports the data from the file and runs a detailed report.
#' @examples main_func()
#' @export
main_func <- function(){
        import_data()
        create_detailed_report()

        # run_shiny_app()
}
