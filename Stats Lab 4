# R was created by statisticians so it's the perfect program for running stats
#Let's use a premade dataset to run some statistical analyses
#Dowload the body size dataset on moodle and load it into R


#Let's import our excel file
#If you're using R Studio Desktop you will have to set your working directory
##Session -> Set Working Directory -> Choose Directory
#For Cloud users: Under the Files panel (bottom right) click upload files to server

@your file name@ <- read.csv("BodySizeData.csv")

#You can look at the first 10 lines of a dataset using "head"
head(@your file name@)

#Calculate the mean length of all mammals in the dataset.
#na.rm means remove all NA values from the calculation 

mean(@your file name@$LengthCmWithTail, na.rm=TRUE) 

#calculate the standard deviation, removing NAs
sd(@your file name@$LengthCmWithTail, na.rm=TRUE) 

#Check out what your dataset looks like
#If they follow a normal dist, you can use a standard--"parametric"--statistical test 
# e.g. (t-test, ANOVA, regression). 
#If they look really wonky, you might have to use what we call non-parametric tests. 
#These tests essentially do the same thing

hist(@your file name@$LengthCmWithTail)

#Unpaired t-test. Use either the parametric (t.test) or the non-parametric (wilcox.test) 
#depending on whether your data are normal. 

#Compare mean rodent size and mean primate size 

sizetest_t.test <- t.test(@your file name@$LengthCmWithTail[1:43], 
           @your file name@$LengthCmWithTail[44:51],mu=0,paired=FALSE, na.rm=TRUE)

sizetest_wilcox <- wilcox.test(@your file name@$LengthCmWithTail[1:43],
            @your file name@$LengthCmWithTail[44:51],paired=FALSE, na.rm=TRUE) 

#get the summary of the test results. What is it telling us?
sizetest_t.test
sizetest_wilcox

#ANOVAs are similar to t-tests for multiple groups: 
#you are testing for differences in means among groups

LengthByOrder <- aov(@your file name@$LengthCmWithTail ~ @your file name@$MammalianOrder)

#get the summary of the ANOVA
summary(LengthByOrder)

#Let's do a linear regression (Linear Model) on length by latitude. 
#In R's syntax, 'y ~ x' means "regress y (dependent) on x (independent)"

#If your data are normally distributed, you can use a regular lm
size_lat_lm <- lm(@your file name@$LengthCmWithTail ~ @your file name@$MeanAnnualPrecipmmRand)

summary(size_lat_lm)

#If your data are not normal, use a generalized linear model
size_lat_glm <- glm( @your file name@$LengthCmWithTail ~ @your file name@$MeanAnnualPrecipmmRand)

summary(size_lat_glm)

#------------------------------------------------------------------------------#
#Now let's analyze the data we collected on our Herps field trip
  
herp <- read.csv("Herp_data_final.csv")  

# Subset the dataframe to include only the categories of interest

herp_sub <- herp[@first row #: last row #, first column #: last column # @]

# Tell R the 1st column of our dataset are row names

herp_sub2 <- herp_sub[,-1]
rownames(herp_sub2) <- herp_sub[,1]

#Make sure you check what your dataset looks like.
#If the column names don't match you may need to manually change them

herp_sub2.1 <- herp_sub2[-1,]
colnames(herp_sub2.1) <- c(@ "Column 1 name", "Column 2 name" @)

# Convert columns with number to numeric 

herp_sub2.1[, @ first column #: last column # @] <- lapply(herp_sub2.1[, @ first column #: last @], function(x) as.numeric(as.character(x)))

chisq.test(herp_sub2.1)

# A p-value less than 0.05 is considered statistically significant. 
#In a Chi- Squared Test that means there is an association between our categories
