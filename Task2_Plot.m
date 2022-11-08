
    %Start to create functions
syms x

    %end of creating functions and start to plot 
hold on

x_DataPoint_TestData=TestData(1,:);
y_DataPoint_TestData=TestData(2,:);
x_DataPoint_LargeData=LargeData(1,:);
y_DataPoint_LargeData=LargeData(2,:);
plot(x_DataPoint_TestData,y_DataPoint_TestData,'.')
plot(x_DataPoint_LargeData,y_DataPoint_LargeData,'x')
    

    %end of plot and start to calculate the Training error 

legend('TestData','TrainingData')
title('Data')


    %end of plot and start to calculate the Training error   
