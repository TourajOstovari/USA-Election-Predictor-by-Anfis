while(1)
    president = double(input('First_President??  0 Republic 1 democrat? '));
    president_Y = double(input('First_President Y??  0 Republic 1 democrat? '));
    p2=double(input('Second_President??  0 Republic 1 democrat? '));
    p2_Y=double(input('Second_President Y??  0 Republic 1 democrat? '));
    p3=double(input('Third_President??  0 Republic 1 democrat? '));
    p3_Y=double(input('Third_President Y??  0 Republic 1 democrat? '));
    p4=double(input('Fourd_President??  0 Republic 1 democrat? '));
    p4_Y=double(input('Fourd_President Y??  0 Republic 1 democrat? '));
    p5=double(input('Thift_President??  0 Republic 1 democrat? '));
    p5_Y=double(input('Thift_President Y??  0 Republic 1 democrat? '));
    [Y,prediction_percent] = evalfis(fismat_EUR,[president p2 president_Y p2_Y p3 p3_Y p4 p4_Y p5 p5_Y]');
    disp(mean(prediction_percent(:)) * 100)
    disp(round((Y)))
    pause(16);clc;
end