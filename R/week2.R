#Import and Labeling
rt_df <- read.csv(file = 'data_proj2/week2.csv', header = T)
factor(rt_df$condition, levels=c("A", "B"), labels=c("Control", "Experimental"))
factor(rt_df$gender, levels=c("M", "F", "N"), labels=c("Male", "Female", "Nonbinary"))

#Analysis
mean(rt_df$rt)
rt_f_df <- subset(rt_df, rt_df$gender == "F")
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]]["rt"]