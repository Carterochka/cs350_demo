# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

# swirl_options(swirl_logging = TRUE)

.get_course_path <- function(){
    tryCatch(swirl:::swirl_courses_dir(),
             error = function(c) {file.path(find.package("swirl"),"Courses")}
    )
}

# create a population
set.seed(1234) # to set the random seed

# create a population of 50000 random numbers
# that take the form of a Normal distribution
# (like a symmetric hill that peaks at zero)
population <- rnorm(50000, mean = 1, sd = 1)

#plot a histogram of the distribution of this 'population'
hist(population, breaks = 100, col = "red")

# create a density plot of this 'population'
plot(density(population), col = "red", lwd = 3)

sample_fn <- function(sample_size = NULL, data = population) {
    rand_samp <- sample(population, sample_size) # use "sample()" function
    return(mean(rand_samp))
}