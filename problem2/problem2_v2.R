isServer <- F
wpath <- ifelse(isServer, "~/viscando/", 
                "/media/yslin/kea/Life/Jobs/ITRE/"); wpath
setwd( ifelse(.Platform$OS.type == "windows", 
             shortPathName("E:/Life/Jobs/ITRE/"), wpath) )

scan_file <- function(x) {
  fni <- paste0(fp, x)
  out <- length(scan(fni, quiet = TRUE))
  return(out)
}

fp <- "tests/data/problem_2/"
fn <- list.files(fp)
nvalue <- 100
idx <- which(lapply(fn, scan_file) < nvalue)
nfile <- length(idx)

cat("Total number of files with fewer than 100 values: ")
if (nfile == 0) {
  cat("All files store more than 100 values\n")
} else {
  cat(nfile, "")
  cat("in file", fn[idx], "\n")
}