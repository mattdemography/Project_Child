path<-"C:/Users/mjmpo/Dropbox/Consulting/Project_Child/Data"
sf<-read.csv(paste0(path, "/SFY10_Admin_dollars.csv"))
names(sf)

attach(sf)
table(Biennium) #All Single Year
table(Fiscal.Month)  #What Will we do about 99's? What do these mean?
table(Expenditure.Authority.Index)  #There are 5 Expenditure Authority Indecies
table(Program.Index.Title) #One to One Correspondence with Program.Index
#table(Program.Index)
#t<-table(Program.Index, Program.Index.Title) 
#View(t)
table(Subobject.Title) #One to One Correspondence with Subobject
#table(Subobject)
#t<-table(Subobject, Subobject.Title)
#View(t)
table(Organization.Index.Title) #One to One Correspondence with Organization.Index
#table(Organization.Index)
#t<-table(Organization.Index, Organization.Index.Title)
#View(t)
table(Month.Of.Service) #I don't know what these are. They don't seem to align with anything
table(Gl.Account.Title) #One to One Correspondence with GL.Account
#table(GL.Account)
detach(sf)

#Take a Closer Look At Amount
table(sf$Amount)
summary(sf$Amount) #Min and Max are 50,159.80
boxplot(sf$Amount, main="Amounts", ylab="Amounts")
hist(sf$Amount, main="Histogram of Total Money In")
plot(sf$Amount, sf$Fiscal.Month)


