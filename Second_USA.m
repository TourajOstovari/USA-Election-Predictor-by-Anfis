Data = xlsread('USA.csv');
x_FirstPresident_ = [Data(1:end-5,1) Data(1:end-5,2) Data(2:end-4,1) Data(2:end-4,2) Data(3:end-3,1) Data(3:end-3,2) Data(4:end-2,1) Data(4:end-2,2) Data(5:end-1,1) Data(5:end-1,2)];
x_SecondPresident_ = [Data(6:end,2)];
inputx = x_FirstPresident_;
outputx = x_SecondPresident_;
inputz = [inputx outputx];
fismat_EUR = genfis2(inputx,outputx,0.1);
out_fis = anfis(inputz,fismat_EUR,300)