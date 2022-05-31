

%h=axes('Position',[0 0 1 1],'Visible','off');
%f=axes('Position',[.01 .53 1 .46]);
clf;

g=axes('Position',[.1 .25 .8 .5]);

set(gcf,'CurrentAxes',g)

hold on
a=4.5;
x=-a:.01:a;
y0=normpdf(x,-1,1);
y1=normpdf(x,1,1);

plot(x,y0,'linewidth',1.5)
plot(x,y1,'linewidth',1.5)

axis([-a a 0 .6])

% yaxis
%plot([0,0],[0,1],'linewidth',1.5)
% xaxis
%plot([-5,5],[0,0],'linewidth',1.5)

set(gca,'XTick',[-1,0,1]);
set(gca,'YTick',[0,0.5]);

%set(gca,'XTickLabel',{' '})
%set(gca,'YTickLabel',{' '})

text(-2.5,.3,'\itH_0','FontWeight','Bold')
text(2.2,.3,'\itH_1','FontWeight','Bold')

