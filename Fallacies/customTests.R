# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

# # Get the swirl state
# getState <- function(){
#    # Whenever swirl is running, its callback is at the top of its call stack.
#    # Swirl's state, named e, is stored in the environment of the callback.
#    environment(sys.function(1))$e
# }
# 
# # Retrieve the log from swirl's state
# getLog <- function(){
#    getState()$log
# }
# 
# submit_log <- function(){
#    
#    # Please edit the link below
#    pre_fill_link <- "https://docs.google.com/forms/d/e/1FAIpQLSesDWq9dKdnlutTeZFriqVAfUHHIo5918BGDbW-Nkk4APyLEg/viewform?usp=pp_url"
#    
#    # Do not edit the code below
#    if(!grepl("=$", pre_fill_link)){
#       pre_fill_link <- paste0(pre_fill_link, "=")
#    }
#    
#    p <- function(x, p, f, l = length(x)){if(l < p){x <- c(x, rep(f, p - l))};x}
#    
#    temp <- tempfile()
#    log_ <- getLog()
#    nrow_ <- max(unlist(lapply(log_, length)))
#    log_tbl <- data.frame(user = rep(log_$user, nrow_),
#                          course_name = rep(log_$course_name, nrow_),
#                          lesson_name = rep(log_$lesson_name, nrow_),
#                          question_number = p(log_$question_number, nrow_, NA),
#                          correct = p(log_$correct, nrow_, NA),
#                          attempt = p(log_$attempt, nrow_, NA),
#                          skipped = p(log_$skipped, nrow_, NA),
#                          datetime = p(log_$datetime, nrow_, NA),
#                          stringsAsFactors = FALSE)
#    write.csv(log_tbl, file = temp, row.names = FALSE)
#    encoded_log <- base64encode(temp)
#    browseURL(paste0(pre_fill_link, encoded_log))
# }


 getState <- function(){
    # Whenever swirl is running, its callback is at the top of its call stack.
    # Swirl's state, named e, is stored in the environment of the callback.
    environment(sys.function(1))$e
 }
 
 keygen <- function(val, char){
    set.seed(val)
    pran <- function(n = 1){
       replicate(n, sample(c(LETTERS, letters, 0:9), 1))
    }
    ks <- replicate(10, paste0(pran(4), collapse = ""))
    set.seed(NULL)
    pn <- sample(1:16, 1)
    kn <- sample(1:10, 1)
    sss <- paste(sample(c(LETTERS, letters, 0:9), 16-pn), collapse = "")
    eee <- paste(sample(c(LETTERS, letters, 0:9), pn), collapse = "")
    paste0("CS350", sss, char, ks[kn], eee)  
 }
 
 
 cs112_credit <- function(val, char){
    selection <- getState()$val
    if(selection %in% c("Yes", "No")){
       message("#########################")
       message("Copy the code below as your answer")
       message("#########################")
       message(keygen(val, char))
       message("#########################")
       message("and paste it in the link below")
       message("https://forms.gle/hxmu75oDkctWDonn6")
       message("#########################")
       return(TRUE)
    } else {
       return(TRUE)
    }
 } 
 
 