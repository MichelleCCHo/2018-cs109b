data {
  // write code here
  int N;
  real<lower=0> X[N];
}

parameters {
 // write code here
  real mu;
  real<lower=0> sigma;
}

model {
  // write code here
  // likelihood
  X ~ normal(mu, sigma);
}

generated quantities {
 // (optional) write code here
}

