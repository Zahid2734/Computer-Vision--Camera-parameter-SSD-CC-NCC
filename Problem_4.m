%% For 1st dataset using least square method
linefit = load('linefit.mat');

figure;
scatter(linefit.xs,linefit.n_y1);
hold on;

[y1, val1]= least_square(linefit.xs,linefit.n_y1);

line(linefit.xs,y1,'Color','blue','DisplayName','a)least square 1st set'); 
legend
%% For 2nd dataset using least square method

scatter(linefit.xs,linefit.n_y2);

[y2, val2]= least_square(linefit.xs,linefit.n_y2);

line(linefit.xs,y2,'Color','red','DisplayName','b)least square 2nd set');
legend
%% Using Ransac removing outlier
[final]=ransac([linefit.xs',linefit.n_y2']);

x3 = final(:,1);
y3 = final(:,2);



plot(x3,y3,'*','Color','red','DisplayName','c)ransac');

[y3, val3]= least_square(x3',y3');
line(x3,y3,'Color','green');
hold off;
legend

