clc;
clear;
A=zeros(24,2);
a=zeros(24,1);
b=zeros(24,1);
A=xlsread('收益数据.xlsx');
for i=1:24
a(i,1)=A(i,1);
end
for i=1:24
b(i,1)=A(i,2);
end


fig = figure('Units','centimeter','Position',[5 5 9 9]);
%中括号里面的是调整图片大小的，主要调整最后面两个长度和宽度
left_color = [20/255,20/255,50/255];%左边y坐标的颜色
right_color = [0 0 1];              %右边y坐标的颜色
set(fig,'defaultAxesColorOrder',[left_color; right_color]);
hold on;                            %因为要画不同的图，所以hold on
 
% 画柱状图
yyaxis left                         %激活left y
%bar(x, [samp1',samp2']);

%GO = bar(a,b,'EdgeColor','black');%边框颜色为黑色
GO = bar(a,b,1);%边框颜色为黑色
GO.FaceColor = [148/255,166/255,196/255];%设置第一个柱状图的颜色


xlim([0 25]);     %x坐标显示范围
ylim([-0.5 3]);
xticks(0:5:25);  %x坐标刻度显示
xlabel('Time/h','fontsize',15,'FontName','Times New Roman');
ylabel('Proceeds of attack','fontsize',15,'FontName','Times New Roman');

 
% 右边y轴（折线图）
yyaxis right
Line1=plot(b,'LineWidth', 1.5,'MarkerEdgeColor', 'b','Marker','.');
%MarkerEdgeColor 标记物颜色
%Line1.Color=[200/255, 80/255, 80/255];
Line1.Color=[100/255, 100/255, 246/255];
ylim([-5 3])                      %右边y轴显示范围
%text(1.95,0.98,"\downarrow 0.9893",'FontName', 'Times New Roman', 'color','r');
% x轴
%grid on;   %画网格
set(gca, 'FontName', 'Times New Roman', 'FontSize', 12)
%set(gca,'YColor',[1 0 0]);
