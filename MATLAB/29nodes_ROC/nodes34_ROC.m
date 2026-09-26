clc;
clear;
[A,B]=xlsread('z2.xlsx');
matrix_col=size(A,1);
matrix_row=size(A,2);

% for i=[1,4,7,10,13,16]
% %  c=polyfit(A(:,i),A(:,i+1),2);
% % %  a=A(:,i);
% % %  b=A(:,i+1);
% % %  values = spcrv([[a(1) a a(end)];[b(1) b b(end)]],2);
% % %  plot(values(1,:),values(2,:));
% plot(A(:,i),A(:,i+1));
% hold on
% end


figure
% plot(A(:,1),A(:,2),'--b^','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',5,'MarkerIndices',1:3:length(A(:,1)));
% hold on;
% plot(A(:,4),A(:,5),'--gd','LineWidth',1,'MarkerEdgeColor','g','MarkerFaceColor','g','MarkerSize',5,'MarkerIndices',1:3:length(A(:,4)));
% hold on;
% plot(A(:,7),A(:,8),'--ms','LineWidth',1,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerSize',5,'MarkerIndices',1:3:length(A(:,7)));
% hold on;
% plot(A(:,10),A(:,11),'--k^','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',5,'MarkerIndices',1:3:length(A(:,10)));
% hold on;
% plot(A(:,13),A(:,14),'--cx','LineWidth',1,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerSize',5,'MarkerIndices',1:3:length(A(:,13)));
% hold on;

plot(A(:,1),A(:,2),'--b','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',5,'MarkerIndices',1:3:length(A(:,1)));
hold on;
plot(A(:,4),A(:,5),'--g','LineWidth',1,'MarkerEdgeColor','g','MarkerFaceColor','g','MarkerSize',5,'MarkerIndices',1:3:length(A(:,4)));
hold on;
plot(A(:,7),A(:,8),'--m','LineWidth',1,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerSize',5,'MarkerIndices',1:3:length(A(:,7)));
hold on;
plot(A(:,10),A(:,11),'--k','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',5,'MarkerIndices',1:3:length(A(:,10)));
hold on;
plot(A(:,13),A(:,14),'--c','LineWidth',1,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerSize',5,'MarkerIndices',1:3:length(A(:,13)),'LineWidth',2);
hold on;

lg1=legend('基于BPNN检测方法','基于SVR检测方法','基于GRU检测方法','基于MLR检测方法','本文方法');
set(lg1,'Orientation','horizon','Box','off')
lg1.FontSize = 15;
lg1.TextColor = 'black';
lg1.NumColumns = 1;
lg1.Location = 'northeast';
leg.Orientation = 'vertical';
axis([0.01,0.1,0,0.75])%x,y轴范围
xlabel('误检率')  %x轴坐标描述
ylabel('漏检率') %y轴坐标描述
