ML Challenge Markdown


## Project Description
Continue improvements in automation and enhancing the user experience are keys to what make Wave successful.  Simplifying the lives of our customers through automation is a key initiative for the machine learning team.  Your task is to solve the following questions around automation.


### Questions to answer:
1. Train a learning model that assigns each expense transaction to one of the set of predefined categories and evaluate it against the validation data provided.  The set of categories are those found in the "category" column in the training data. Report on accuracy and at least one other performance metric.
Answer: 
Open assRule.R in RStudio or and equivalent R reader.
Some attributes were removed due to high entropy and therefore contained little to no relavant information for a dataset of the size. The assciation rules libraries were downloaded and applied to the training and validation datasets using the support,confidence and lift metrics.

The confidence metric is used primarily due to the vectored condition it has to predict the category attribute. Other decisions were made and as described in the document.

2. Mixing of personal and business expenses is a common problem for small business.  Create an algorithm that can separate any potential personal expenses in the training data.  Labels of personal and business expenses were deliberately not given as this is often the case in our system.  There is no right answer so it is important you provide any assumptions you have made.
Answer:
Open des_check.R in RStudio or and equivalent R reader.

Given the limited data it is dificult to measure which purchases my be erroneos, however we may begin to classify each purchase to flag the potetially erroneous from the routine. For this a boolean classification model was chosen to seperate the seemingly routine from the unique purchase - which is assumed may have a higher probability of being erroneous. Further assesment classification is necessary on a richer dataset. 

3. (Bonus) Train your learning algorithm for one of the above questions in a distributed fashion, such as using Spark.  Here, you can assume either the data or the model is too large/efficient to be process in a single computer.

Due to a lack of computational power this question was not attempted. Pig and pyspark are languages in my repitoire and given the appropriate emulator can be displayed. 

### Documentation:

Please modify `README.md` to add:

1. Instructions on how to run your application
2. A paragraph or two about what what algorithm was chosen for which problem, why (including pros/cons) and what you are particularly proud of in your implementation, and why
3. Overall performance of your algorithm(s)

## Submission Instructions

1. Fork this project on github. You will need to create an account if you don't already have one.
2. Complete the project as described below within your fork.
3. Push all of your changes to your fork on github and submit a pull request. 
4. You should also email [dev.careers@waveapps.com](dev.careers@waveapps.com) and your recruiter to let them know you have submitted a solution. Make sure to include your github username in your email (so we can match applicants with pull requests.)

## Alternate Submission Instructions (if you don't want to publicize completing the challenge)
1. Clone the repository.
2. Complete your project as described below within your local repository.
3. Email a patch file to [dev.careers@waveapps.com](dev.careers@waveapps.com)

## Evaluation
Evaluation of your submission will be based on the following criteria. 

1. Did you follow the instructions for submission? 
2. Did you apply an appropriate machine learning algorithm for the problem and why you have chosen it?
3. What features in the data set were used and why?
4. What design decisions did you make when designing your models? Why (i.e. were they explained)?
5. Did you separate any concerns in your application? Why or why not?
6. Does your solution use appropriate datatypes for the problem as described? 
