library(rmarkdown)
library(tabulizer)

npages <- 80
files <- paste0("./temp_handout",1:npages,".pdf")

for(i in 1:npages) {
  render(
    input = "./handout.Rmd", 
    output_format = "all",
    output_file = files[i]
  )
} 

merge_pdfs(files,"handouts.pdf")
file.remove(files)