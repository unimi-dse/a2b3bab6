#shiny server
df <- MidDatAnalysis::titanic_data
shinyServer(function(input,output){

    output$sex_rel <-renderPlot({
        survival_sex_rel()
    })
    output$mean_class <- renderPlot({
        survival_mean_class()
    })
    output$mean_age <- renderPlot({
        survivor_age_mean()
    })

    output$data <- DT::renderDataTable(
        df
    )

})

