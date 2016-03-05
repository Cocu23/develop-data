library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Celsius-Fahrenheit Temperature Converter"),
  sidebarPanel(
    numericInput("temperature", label = "Enter Temperature Here:", value = 0),
    
    radioButtons("unit", label = "Select Degree Here:", 
                 choices = c(" Fahrenheit", " Celsius"))
  ),
  mainPanel(
    h4("Converted Temperature"),
    
    verbatimTextOutput("converted_temp"),
    
    h4("Here you can change temperatures in degrees Celsius and/or Fahrenheit
       "),
    
    h4("Enter the temperature to be converted and select the input degree for converting")
    
   
    )
))
