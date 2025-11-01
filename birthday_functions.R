bday_collision <- function(n) {
  bdays <- sample.int(365, size = n, replace = TRUE)
  any(duplicated(bdays))
}
