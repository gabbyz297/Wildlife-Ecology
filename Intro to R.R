#R uses the # sign to add comments.
#Comments are used so you and others understand what the R code is about. 
#Comments are not run as R code, so they will not influence your result.

#Let's start with a basic command.
#To run a line of code press click "run"

2 + 3

#A variable allows you to store a value in R. 
#You can use this variable's name to easily access the value later

#Let's save the answer to our calculation as a variable

myvar <- 2 + 3

#Saved variables can be found in our R Environment (top right)
#Now we can use our variable in another calculation

myvar + 5

#R has many built-in data sets we can use. Let's look at one.

data("co2")

#We can learn more about built-in data sets using "?"

?co2

#We can view the data set by typing it's name.

co2

#We can create a basic plot of the data using the "plot" function

plot(co2)

#Now let's make it pretty!
#Here is a list of colors: https://r-graph-gallery.com/42-colors-names.html

plot(co2, col="darkmagenta")

#We can add a title and change our axis labels too

plot(co2, col= "darkmagenta", xlab= "Year", 
     ylab= "CO2 Concentration", 
     main= "Mauna Loa Atmospheric CO2 Concentration")

#Let's look at one more data set

data("rivers")

?rivers

#We can visualize our data using a histogram with the "hist" function

hist(rivers, main="Length of North American Rivers", xlab="Length (miles)", 
     col="darkcyan")


#The more you run R code, the more familiar it will become, so keep practicing!
#There is lots of documentation online, but there's no one right way to start 
#off in data analysis and programming in R. 
