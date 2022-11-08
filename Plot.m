
Parameter=LSR_xc166(LargeData,0,9)
    %Start to create functions
syms x
list=[];
for a=0:size(Parameter)-1
    list=[list power(x,a)];
end
f(x)=Parameter'*list';
    %end of creating functions and start to plot 
hold on
fplot(f(x),[0 1])
x_DataPoint_TestData=TestData(1,:);
y_DataPoint_TestData=TestData(2,:);
x_DataPoint_LargeData=LargeData(1,:);
y_DataPoint_LargeData=LargeData(2,:);
plot(x_DataPoint_TestData,y_DataPoint_TestData,'.')
plot(x_DataPoint_LargeData,y_DataPoint_LargeData,'x')
    

    %end of plot and start to calculate the Training error 

Parameter1=LSR_xc166(LargeData,0,5)
    %Start to create functions
list1=[];
for a=0:size(Parameter1)-1
    list1=[list1 power(x,a)];
end
f1(x)=Parameter1'*list1';
fplot(f1(x),[0 1])
    %end of creating functions and start to plot 
legend('N=9','TestData','TrainingData','N=5')
title('Fitting Curve and Data')


    %end of plot and start to calculate the Training error   
