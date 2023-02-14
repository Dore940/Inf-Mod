model ex_sir_om
////automatically generated ////
  //input variables
  Real beta=1,nu=0.3;
////do not modif above this line ////

  // Начальные значения:
  Real s(start=0.999), i(start=0.001), r(start=0.0);
  
  // модель SIR:
equation
  der(s)=-beta*s*i;
  der(i)=beta*s*i-nu*i;
  der(r)=nu*i;
end ex_sir_om;

