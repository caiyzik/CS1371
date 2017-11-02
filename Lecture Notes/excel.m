
    clc
    clear
     
    [nums, txt, raw] = xlsread('gradeSheet.xlsx');
    hw_cols = 2:5;
    tst_cols = 6:8;
    fin_cols = 9;
    %nums(isnan(nums)) = 0;
    % extract hw averages
    hw = nums(:, hw_cols);
    hwavg = mean(hw,2);
    tst_avg = mean(nums(:,tst_cols),2);
    nums = [nums, hwavg, tst_avg, nums(:, fin_cols)];
    
    weights = [0.15; 0.45; 0.4];
    
    nums(:, 19) = nums(:, 16:18) * weights;
    txt(2, 18:21) = {'HW_avg', 'Test_avg', 'Final', 'Overall'};
    txt(3:end, 3:end) = num2cell(nums);
    
    %xlswrite('output.xlsx', txt);
    
