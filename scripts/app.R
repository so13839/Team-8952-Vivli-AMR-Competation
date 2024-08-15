library(shiny)
library(shinydashboard)
library(leaflet)
library(plotly)
library(tidyverse)
library(DT)
library(RColorBrewer)

#Data
data <- read_csv("Kampala_data.csv")

# UI for the dashboard
# UI for the dashboard
ui <- dashboardPage(
  dashboardHeader(title = "AMR Dashboard"),
  dashboardSidebar( 
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      selectInput("selected_species", "Select Species:", choices = unique(data$Species)),
      menuItem("Download Results", tabName = "isolate_table", icon = icon("table"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "dashboard",
              fluidRow(
                box(
                  title = "An Interactive Dashboard with Simulated data, Kampala, Uganda", status = "info", solidHeader = TRUE, width = 14,
                  "Welcome to the Antibiotic Resistance Dashboard. Please select a species from the dropdown menu on the left to view relevant data visualizations.
                  Click on Download Results to see the Species ID and download the results in comma separated (csv) format."
                )
              ),
              fluidRow(
                box(
                  title = "Source Distribution", status = "primary", solidHeader = TRUE,
                  plotlyOutput("source_plot")
                ),
                box(
                  title = "Geographical Distribution by Region", status = "primary", solidHeader = TRUE,
                  leafletOutput("map")
                )
              ),
              fluidRow(
                box(
                  title = "Samples by Year", status = "primary", solidHeader = TRUE,
                  plotlyOutput("year_plot")
                ),
                box(
                  title = "Gender Distribution", status = "primary", solidHeader = TRUE,
                  plotlyOutput("gender_plot")
                )
              ),
              fluidRow(
                box(
                  title = "Amikacin Resistance", status = "primary", solidHeader = TRUE,
                  plotlyOutput("amikacin_plot")
                ),
                box(
                  title = "Ampicillin Resistance", status = "primary", solidHeader = TRUE,
                  plotlyOutput("ampicillin_plot")
                ),
                box(
                  title = "Erythromycin Resistance", status = "primary", solidHeader = TRUE,
                  plotlyOutput("erythromycin_plot")
                ),
                box(
                  title = "Doripenem Resistance", status = "primary", solidHeader = TRUE,
                  plotlyOutput("doripenem_plot")
                )
                
              )
      ),
      tabItem(tabName = "data",
              box(
                title = "Raw Data", status = "primary", solidHeader = TRUE,
                DT::dataTableOutput("data_table")
              )
      ),
      tabItem(tabName = "isolate_table",
              box(
                title = "Isolate ID Table", status = "primary", solidHeader = TRUE,
                DT::dataTableOutput("isolate_id_table"),
                downloadButton("download_data", "Download CSV")
              )
      )
    )
  )
)

# Server logic
server <- function(input, output, session) {
  
  # Reactive data based on selected species
  filtered_data <- reactive({
    req(input$selected_species)
    data %>% filter(Species == input$selected_species)
  })
  
  # Source Distribution Plot
  output$source_plot <- renderPlotly({
    source_count <- filtered_data() %>% count(Source)
    plot_ly(source_count, x = ~Source, y = ~n, type = 'bar') %>%
      layout(
        title = "Source Distribution",
        xaxis = list(title = "Source"),
        yaxis = list(
          title = "Count",
          tickformat = ".0f",
          tickvals = unique(source_count$n),  # Use unique values from the data
          ticktext = unique(source_count$n)   # Avoid repeating counts
        )
      )
  })
  
  # Geographical Map by Region
  output$map <- renderLeaflet({
    # Generate region data
    region_data <- filtered_data() %>%
      group_by(Region) %>%
      summarise(
        x = mean(x, na.rm = TRUE),
        y = mean(y, na.rm = TRUE),
        count = n()
      )
    
    # Define a color palette for the regions within the renderLeaflet function
    color_palette <- colorFactor(palette = brewer.pal(n = length(unique(region_data$Region)), name = "Set3"),
                                 domain = region_data$Region)
    
    leaflet(region_data) %>%
      addTiles() %>%
      addCircles(
        lng = ~x, lat = ~y,
        radius = 700,  # Set a fixed radius for all circles
        popup = ~paste(Region, "<br>", "Count:", count),
        color = ~color_palette(Region),  # Use the color palette for circle colors
        fillColor = ~color_palette(Region),  # Fill color for circles
        fillOpacity = 10,   # Adjust the fill opacity
        label = ~Region,     # Show the region names on hover
        stroke = FALSE       # Remove the circle outline for a cleaner look
      )
  })
  
  # Samples by Year Plot
  output$year_plot <- renderPlotly({
    year_count <- filtered_data() %>%
      group_by(Year) %>%
      summarise(n = n(), .groups = 'drop') # Count occurrences for each year
    
    plot_ly(year_count, x = ~as.factor(Year), y = ~n, type = 'bar') %>%
      layout(
        title = "Samples by Year",
        xaxis = list(title = "Year"),
        yaxis = list(
          title = "Count",
          tickformat = ".0f",
          tickvals = unique(year_count$n),  # Use unique values from the data
          ticktext = unique(year_count$n)   # Avoid repeating counts
        )
      )
  })
  
  # Gender Distribution Plot
  output$gender_plot <- renderPlotly({
    gender_count <- filtered_data() %>% count(Gender)
    plot_ly(gender_count, labels = ~Gender, values = ~n, type = 'pie') %>%
      layout(title = "Gender Distribution")
  })
  
  # Amikacin Resistance Plot
  output$amikacin_plot <- renderPlotly({
    amikacin_resistance <- filtered_data() %>% 
      count(Amikacin) %>% 
      mutate(Color = case_when(
        Amikacin == "Resistant" ~ "green",
        Amikacin == "Susceptible" ~ "green",
        TRUE ~ "green"
      ))
    
    plot_ly(amikacin_resistance, x = ~Amikacin, y = ~n, type = 'bar', color = ~Color, colors = ~Color) %>%
      layout(
        title = "Amikacin Resistance", 
        xaxis = list(title = "Resistance"), 
        yaxis = list(
          title = "Count",
          tickformat = ".0f",
          tickvals = unique(amikacin_resistance$n),  # Use unique values from the data
          ticktext = unique(amikacin_resistance$n)   # Avoid repeating counts
        )
      )
  })
  
  # Ampicillin Resistance Plot
  output$ampicillin_plot <- renderPlotly({
    ampicillin_resistance <- filtered_data() %>% 
      count(Ampicillin) %>% 
      mutate(Color = case_when(
        Ampicillin == "Resistant" ~ "red",
        Ampicillin == "Susceptible" ~ "red",
        TRUE ~ "red"
      ))
    
    plot_ly(ampicillin_resistance, x = ~Ampicillin, y = ~n, type = 'bar', color = ~Color, colors = ~Color) %>%
      layout(
        title = "Ampicillin Resistance", 
        xaxis = list(title = "Resistance"), 
        yaxis = list(
          title = "Count",
          tickformat = ".0f",
          tickvals = unique(ampicillin_resistance$n),  # Use unique values from the data
          ticktext = unique(ampicillin_resistance$n)   # Avoid repeating counts
        )
      )
  })
  # Erythromycin Resistance Plot
  output$erythromycin_plot <- renderPlotly({
    erythromycin_resistance <- filtered_data() %>% 
      count(Erythromycin) %>% 
      mutate(Color = case_when(
        Erythromycin == "Resistant" ~ "blue",
        Erythromycin == "Susceptible" ~ "blue",
        TRUE ~ "blue"
      ))
    
    plot_ly(erythromycin_resistance, x = ~Erythromycin, y = ~n, type = 'bar', color = ~Color, colors = ~Color) %>%
      layout(
        title = "Erythromycin Resistance", 
        xaxis = list(title = "Resistance"), 
        yaxis = list(
          title = "Count",
          tickformat = ".0f",
          tickvals = unique(erythromycin_resistance$n),  # Use unique values from the data
          ticktext = unique(erythromycin_resistance$n)   # Avoid repeating counts
        )
      )
  })
  
  # Doripenem Resistance Plot
  output$doripenem_plot <- renderPlotly({
    doripenem_resistance <- filtered_data() %>% 
      count(Doripenem) %>% 
      mutate(Color = case_when(
        Doripenem == "Resistant" ~ "purple",
        Doripenem == "Susceptible" ~ "purple",
        TRUE ~ "purple"
      ))
    
    plot_ly(doripenem_resistance, x = ~Doripenem, y = ~n, type = 'bar', color = ~Color, colors = ~Color) %>%
      layout(
        title = "Doripenem Resistance", 
        xaxis = list(title = "Resistance"), 
        yaxis = list(
          title = "Count",
          tickformat = ".0f",
          tickvals = unique(doripenem_resistance$n),  # Use unique values from the data
          ticktext = unique(doripenem_resistance$n)   # Avoid repeating counts
        )
      )
  })
  
    # Data Table
  output$data_table <- DT::renderDataTable({
    DT::datatable(data)
  })
  
  # Isolate ID Table
  output$isolate_id_table <- DT::renderDataTable({
    filtered_data() %>%
      select(Isolate_Id) %>%
      DT::datatable()
  })
  
  # Download Handler for CSV
  output$download_data <- downloadHandler(
    filename = function() {
      paste("filtered_data_", Sys.Date(), ".csv", sep = "")
    },
    content = function(file) {
      write.csv(filtered_data(), file, row.names = FALSE)
    }
  )
}

# Run the application 
shinyApp(ui = ui, server = server)

