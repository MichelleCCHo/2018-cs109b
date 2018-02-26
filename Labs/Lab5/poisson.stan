data {
  // Number of observations
  int<lower=0> N;
  // Count data (integer array)
  vector<lower=0> [N]Y;
}

parameters {
  real<lower=0> lambda; // Poisson rate parameter 
}

model {
  // Prior
  lambda ~ exponential(0.1);
  // Likelihood
  Y ~ poisson(lambda);
}

generated quantities {
  int y_rep[N];         // Draws from posterior predictive dist
  for (n in 1:N) {
    y_rep[n] = poisson_rng(lambda);
  }
}

