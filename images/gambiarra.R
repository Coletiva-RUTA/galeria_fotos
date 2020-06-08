# Não consegui aprender como faz o loop no html a tempo
# Esse loop serve para printar o código em html para as images

oficinas <- read.table("tot_img.txt")
oficinas <- t(oficinas)

temp <- vector()
for(i in 1:length(oficinas)){
  temp[i] <- paste0("<div class='col-6 col-md-6 col-lg-3'> \
       <a href='images/", oficinas[i],"' class='d-block photo-item' data-fancybox='gallery'> \
       <img src='images/",oficinas[i],"'  alt='Image' class='img-fluid'> \
       </a> \
       </div>")
}

write.table(temp, file = "temp", quote = F, col.names = F, row.names = F)
