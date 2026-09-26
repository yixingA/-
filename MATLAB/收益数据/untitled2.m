clc;
clear;
GO = bar(a,b,1);%边框颜色为黑色
GO.FaceColor = [148/255,166/255,196/255];%设置第一个柱状图的颜色


xlim([0 25]);     %x坐标显示范围
ylim([-0.5 3]);
xticks(0:5:25);  %x坐标刻度显示
xlabel('Time/h','fontsize',15,'FontName','Times New Roman');
ylabel('Proceeds of attack','fontsize',15,'FontName','Times New Roman');