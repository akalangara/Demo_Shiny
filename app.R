#library(rsconnect)

#code to enter in console to update app on cloud, update filepath to folder where app.R is located
#rsconnect::deployApp('C:/Users/user/Documents/Emory/CDC/Demo_App')

#necessary packages
#install.packages(c("shiny","shinythemes","shinymanager")
library(shiny)
library(shinythemes)
library(shinymanager)

#data.frame with credentials info
credentials <- data.frame(
  user = c("User007"),
  password = c("0p3nS3sam3"),
  stringsAsFactors = FALSE
)

ui <- secure_app(theme = shinythemes::shinytheme("superhero"), 
                 navbarPage(theme = shinythemes::shinytheme("superhero"), title = "OHZDP M&E Toolkit",
                 tabPanel(title = "Baseline Assessment",
                          tabsetPanel(type = "tabs",
                                      tabPanel(title = "Template",
                                               tags$iframe(style="height:700px; width:100%; scrolling=yes",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2"))
                          )
                 ),
                 tabPanel(title = "Preliminary Goals Development",
                          tabsetPanel(type = "tabs",
                                      tabPanel(title = "Instructions",
                                               tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                      tabPanel(title = "Preliminary Goals Table", 
                                               tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                      tabPanel(title = "Comprehensive Preliminary Goals Table", 
                                               tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2"))
                          )
                 ),
                 navbarMenu(title = "Refined Goal Development & Indicator Selection",
                            tabPanel(title = "Instructions",
                                     tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                            tabPanel(title = "Refined Goals Worksheets",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel(title = "Collaboration", 
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Surveillance",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Lab Capacity",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Preparedness & Response",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Prevention & Control",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Workforce Development",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Outreach, Education, and Research",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2"))
                                     )
                            ),
                            tabPanel(title = "Indicator Bank",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel(title = "Collaboration", 
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Surveillance",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Lab Capacity",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Preparedness & Response",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Prevention & Control",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Workforce Development",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                                 tabPanel(title = "Outreach, Education, and Research",
                                                          tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2"))
                                     )
                            ),
                            tabPanel(title = "Refined Goals Table",
                                     tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2"))
                 ),
                 tabPanel(title = "Next Steps Development",
                          tabsetPanel(type = "tabs",
                                      tabPanel(title = "Instructions",
                                               tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                      tabPanel(title = "Next Steps Table",
                                               tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2")),
                                      tabPanel(title = "Goals Breakdown Table",
                                               tags$iframe(style="height:700px; width:100%; scrolling=no",src="https://onedrive.live.com/embed?cid=1A82737001D02753&resid=1A82737001D02753%214378&authkey=ADIrCr6TI3_CynE&em=2"))
                          )
                 ),
                 tabPanel(title = "CDC Data Sharing & Follow Up Survey Creation",
                          h1("Step 5: CDC Data Sharing & Follow Up Survey Creation"),
                          h4(strong(em("The follow up questionnaire can be created after the workshop if preferred."))),
                          br(),
                          p("After the goals, indicators, and next steps are finalized, each sector will delineate at least one point of contact (POC). 
                            The POC will be able to further communicate if asked about their corresponding next step. 
                            The POC's contact information will be noted in the", em("Goal Breakdown Table"),"(see Next Steps Development)."),
                          p("It will also be discussed whether the country/region would like to share progress with the CDC. 
                            If so, a follow-up questionnaire meant to measure goal progress will be created by the CPT. 
                            Additionally, a tentative date for a progress check on goals will be selected by the CPT, 
                            and any other data sharing details can be discussed."),
                          br(),
                          actionButton(inputId='form_bttn', label="Go to Follow Up Survey Creation Form (Demo to Google)", 
                                       onclick ="window.open('https://www.google.com/')")
                 )
        )
)

server = function(input, output) {
  
  #check if username and passwor are correct
  result_auth <- secure_server(check_credentials = check_credentials(credentials))
  
  output$res_auth <- renderPrint({
    reactiveValuesToList(result_auth)
  })
  
  
}

shinyApp(server = server, ui = ui)
