install.packages('arules')
install.packages('arulesViz')
library('arules')
library('arulesViz')
td <- read.transactions("G:/Wave/training_data_example.csv", sep = ",") # load training dataset(truncated)
vd <- read.transactions("G:/Wave/validation_data_example.csv", sep = ",")# load validation dataset(truncated)
#Data preperation
#Remove unnecessary attributes due to high entropy(threshold)

td$date <- NULL
td$'employee id'<- NULL
td$'pre-tax amount'<- NULL
td$'tax amount'<- NULL

vd$date <- NULL
vd$'employee id'<- NULL
vd$'pre-tax amount'<- NULL
vd$'tax amount'<- NULL

list <- eclat(td, parameter = list (supp = .04, minlen = 3)) #show all association rules with the minimumn length of three(3) and the support metric
inspect(list)
ap <- apriori(td, parameter = list(conf = .08 , minlen = 3)) #show the highes apriori association on the training dataset and the reported confidence metric
inspect(ap)
ap_lift <- sort(ap, by = "lift", decreasing = T)# calculate lift for vectorless association for comparison
inspect(ap_lift)

#Association rules created for each category
rules <- apriori(td, parameter = list(supp = .05, conf = .15), appearance = list(rhs = 'Meals and Entertainment'), control= list(verbose=F))
inspect(rules) # apriori association for training dataset with suport limits above .o5
rules_me <- apriori(td, parameter = list(supp = .05, conf = .15, minlen = 3), appearance = list(default = 'lhs', rhs = 'Meals and Entertainment'), control= list(verbose=F))
inspect(rules_me) # apriori association for  category 'Meals and Entertainment' on training dataset with suport limits above .o5
rules_travel <- apriori(td, parameter = list(supp = .05, conf = .15, minlen = 3), appearance = list(default = 'lhs', rhs = 'Travel'), control= list(verbose=F))
inspect(rules_travel)# apriori association for category 'Travel' on training dataset with suport limits above .o5
rules_ch <- apriori(td, parameter = list(supp = .05, conf = .15, minlen = 3), appearance = list(default = 'lhs', rhs = 'Computer - Hardware'), control= list(verbose=F))
inspect(rules_ch) # apriori association for category 'Computer - Hardware' on training dataset with suport limits above .o5
rules_cs <- apriori(td, parameter = list(supp = .05, conf = .15, minlen = 3), appearance = list(default = 'lhs', rhs = 'Computer - Software'), control= list(verbose=F))
inspect(rules_cs) # apriori association for category 'Computer - Software' on training dataset with suport limits above .o5

#validation data association rules
rules_v <- apriori(vd, parameter = list(supp = .05, conf = .15), appearance = list(rhs = 'Meals and Entertainment'), control= list(verbose=F))
inspect(rules_v) # apriori association for training dataset with suport limits above .o5
rules_v_me <- apriori(vd, parameter = list(supp = .05, conf = .15, minlen = 3), appearance = list(default = 'lhs', rhs = 'Meals and Entertainment'), control= list(verbose=F))
inspect(rules_v_me) # apriori association for  category 'Meals and Entertainment' on training dataset with suport limits above .o5
rules_v_travel <- apriori(vd, parameter = list(supp = .05, conf = .15, minlen = 3), appearance = list(default = 'lhs', rhs = 'Travel'), control= list(verbose=F))
inspect(rules_v_travel)# apriori association for category 'Travel' on training dataset with suport limits above .o5
rules_v_ch <- apriori(vd, parameter = list(supp = .05, conf = .15, minlen = 3), appearance = list(default = 'lhs', rhs = 'Computer - Hardware'), control= list(verbose=F))
inspect(rules_v_ch) # apriori association for category 'Computer - Hardware' on training dataset with suport limits above .o5
rules_v_cs <- apriori(vd, parameter = list(supp = .05, conf = .15, minlen = 3), appearance = list(default = 'lhs', rhs = 'Computer - Software'), control= list(verbose=F))
inspect(rules_v_cs) # apriori association for category 'Computer - Software' on training dataset with suport limits above .o5

