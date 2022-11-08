MSE_Result_Digit=[];
for i=1:9
    Parameter=LSR_xc166(SmallData,0,i);
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
    %end of plot and start to calculate the Training error
    MSE_Matrix_Temporary=[];
    for b=1:size(x_DataPoint_TestData,2)
        MSE=power(y_DataPoint_TestData(b)-f(x_DataPoint_TestData(b)),2);
        MSE_Matrix_Temporary=[MSE_Matrix_Temporary MSE];
    end
    MSE_Result_Digit=[MSE_Result_Digit sum(MSE_Matrix_Temporary)/size(x_DataPoint_TestData,2)];
end
MSE_Result_Digit=vpa(MSE_Result_Digit)