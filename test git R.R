latdata.1$no<-factor((latdata.1$natorig),
                     levels = c(1,2,3,4,5,6,7),
                     labels = c("Mex", "PR", "Cuba", "DR", "CA", "SA", "Other")) 

jpeg("national_origin.jpg")
ggplot(latdata.1,aes(no))+geom_bar(aes(y=(..count..)/sum(..count..)), fill="steelblue") +
  scale_y_continuous(labels=percent_format()) + 
  labs(title="Latino country/region-of-orign", 
       y="Percent of sample", x="Country/region of origin")+
  theme_classic()
dev.off()