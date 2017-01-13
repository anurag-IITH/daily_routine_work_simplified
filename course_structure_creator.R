# Read the name of the main folder

folderName <- readline(prompt="Enter the CourseName: ")

# Read the path where you want to create the folder

coursePath <- readline(prompt="Enter the folderPath: ")

folderPath = paste(coursePath,folderName,sep ="/")

# Create the folder

dir.create(folderPath)

# Set your working directory to course folder

setwd(folderPath)

# Enter the number of weeks inside the course

nofWeeks = readline(prompt="Enter the no of weeks: ")
NoFweeks = as.integer(nofWeeks)

for (i in 1:NoFweeks){
  weekName = readline(prompt="Enter the TopicName: ")
  setwd(folderPath)
  dir.create(weekName)
  setwd(weekName)
  material = c("slides", "reference_material", "videos", "assignment")
  for (j in material){
    dir.create(j)
  }
}
print("Folders created successfully!!!")
quit()
