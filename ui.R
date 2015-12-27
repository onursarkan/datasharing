library(shiny)
require(markdown)

shinyUI(pageWithSidebar(
  headerPanel('Developing Data Products Course Project: Iris k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    tabsetPanel( 
      tabPanel("Clustering Results",
               mainPanel(
                 plotOutput('plot1')
               )
      ),
      tabPanel("How to use this application",
               mainPanel(
                 includeMarkdown("about.md")
               )
      ),
      tabPanel("About IRIS Dataset",
               mainPanel(
                 includeMarkdown("dataset.md")
               )
      )
      ) 
  )
))
