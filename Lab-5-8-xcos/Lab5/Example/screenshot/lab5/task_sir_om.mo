model task_sir_om
  //input variables
  Real beta = 1, nu = 0.3, mu = 0.1;
  //output variables 
  // Начальные значения:
  Real s(start = 0.999), i(start = 0.001), r(start = 0.0);
  
// модель SIR:
equation
der(s) = -beta*s*i + mu*i + mu*r;
der(i) = beta*s*i - nu*i - mu*i;
der(r) = nu*i - mu*r;

end task_sir_om;

