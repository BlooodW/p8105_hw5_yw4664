power_one_run <- function(mu, n = 30, sigma = 5, alpha = 0.05) {
  x  <- rnorm(n, mean = mu, sd = sigma)
  tt <- t.test(x, mu = 0)
  tid <- broom::tidy(tt)
  
  tibble::tibble(
    mu_true = mu,
    mu_hat  = tid$estimate, 
    p_value = tid$p.value,
    reject  = p_value < alpha
  )
}