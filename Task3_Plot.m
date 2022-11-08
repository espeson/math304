MSE_Result_Digit=[];

    Parameter=LSR_xc166(SmallData,10^-3,9);
    %Start to create functions
    syms x
    list=[];
    for a=0:size(Parameter)-1
        list=[list power(x,a)];
    end
    f(x)=Parameter'*list';
    %end of creating functions and start to plot 
    fplot(f(x),[0 1])
    hold on
    x_DataPoint_TestData=TestData(1,:);
    y_DataPoint_TestData=TestData(2,:);
    plot(x_DataPoint_TestData,y_DataPoint_TestData,'.')
    x_DataPoint_SmallData=SmallData(1,:);
    y_DataPoint_SmallData=SmallData(2,:);
    plot(x_DataPoint_SmallData,y_DataPoint_SmallData,'x')

    title('Fitting Curve and Data')
    Parameter1=LSR_xc166(SmallData,10^-6,9);
    %Start to create functions
    syms x
    list1=[];
    for a=0:size(Parameter1)-1
        list1=[list1 power(x,a)];
    end
    f1(x)=Parameter1'*list1';
    %end of creating functions and start to plot 
    fplot(f1(x),[0 1])
    legend('Lambda=10^-3','TestData','TrainData','Lmabda=10^-6')

    %end of plot and start to calculate the Training error
