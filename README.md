# psy8960-week2

### In-class notes 

**Part 1**
Create a github repo associated with the project named what is required (psy8960-week2)
should have use *R* for R code, *data* for raw data, *docs* for external documentations, *fig* for generated figures, *out* for all other output 
1. create git repository in github.com and pull into R
2. R, data, figs, out, docs (where I lost points)
3. download week2.csv and put into /data
4. create R file in /R (leave R proj file where it is)
5. add *.csv to gitignore and save it, stage, commit or week2.csv (do this before committing everything you have)
**Part 2**
each number refers to the line in R
1 #Import and Labeling
2. rt_df<- read.csv(file="filepath", header=T) #commit
3. rt_df$condition <- factor(rt_df$condition, levels=c("A", "B"), labels=c("Control", "Experimental"))
4. rt_df$gender <- factor(rt_df$gender, levels = c("M", "F", "N"), labels = c("Male", "Female", "Nonbinary"))
5. *empty*
6. #Analysis
7. mean(rt_df$rt)
8. rt_f_df <- subset(rt_df, gender == "Female") or rt_f_df <-[rt_df$gender == "Female",]
9. hist(rt_f_df$rt)
10. datasets <- list(rt_df, rt_f_df)
11. datasets[[1]][2] #extracts the first item of the list and then extracts the second item in the dataframe, returns a dataframe
