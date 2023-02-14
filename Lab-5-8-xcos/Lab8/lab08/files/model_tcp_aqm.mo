model model_tcp_aqm
  //input variables
  Real N = 1, R = 1, K = 5.3, C = 1;
  //output variables
  Real W(start = 0.1), Q(start = 1);
  
  //модель TCP/AQM
equation
  der(W) = 1/R - W*delay(W, R, 2)*K*delay(Q, R, 2)/2/R;
  der(Q) = if Q > 0 then (N*W/R - C) else max(N*W/R - C, 0);
  
end model_tcp_aqm;

