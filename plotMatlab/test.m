clear all;

mu = 2.0;
delta = 1.0;
beta = 0.850159404888417;

phi = linspace(0,11.75,50);

u = delta*delta*(1/(1+mu))*phi.*phi - log(cosh(delta*sqrt(2*beta)*phi));

plot(phi, u);