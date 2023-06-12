
ppp <- function(){
  mpg %>% 
    ggplot(aes(x = as.factor(cyl), y = hwy)) +
    geom_boxplot()
}