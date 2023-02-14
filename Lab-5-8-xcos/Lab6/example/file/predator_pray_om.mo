model predator_pray_om
  //input variables
  Real a = 2, b = 1, c = 0.3, d = 1;
  //output variables
  Real x(start = 2), y(start = 1);
  
// Модель хищник-жертва
equation
  der(x)=a*x-b*x*y;
  der(y)=c*x*y-d*y;
  
end predator_pray_om;

