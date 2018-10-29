X = -10:20;
u = mean(X);
s = std(X);
pd = makedist('Normal','mu',5,'sigma',3);
x = -10:20;
cdf_normal = normcdf(x,5,3,.5,.5);
cdfper = icdf(pd,[0.5, 0.75, 0.9])
plot(x,cdf_normal,'LineWidth',4)