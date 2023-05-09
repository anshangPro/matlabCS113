%% HW8 12012519 周凡卜
clear all; close all; clc;

%% p1
fix(clock)
date
check_year

%% p2
rid_multiple_blanks('Hello    and how  are     you?')

%% p3
subjects = repmat(struct('name', 'Joey', 'sub_id', 111, 'height', 6.7, 'weight', 222.2), 1,3)
subjects(1)
subjects(1).height = 6;
subjects(1).name = 'wierd';
check_name(subjects)

%% p4
x = [1.92 0.05 -2.43 -0.02 0.09 0.85 -0.06];
q1 = x(x<=-0.1 | x >= 0.1)
q2 = [];
for idx = 1:length(x)
    if x(idx)<=-0.1 || x(idx) >= 0.1
        q2(end+1) = x(idx);
    end
end
q2

%% p5
x = 0:10:360;
y = sin(x);
theta = 0;
idx = 1;
M(10) = struct('cdata',[],'colormap',[]);
while (theta < 100)
    y_plot = y .* sind(theta);
    plot(x, y_plot);
    text(0, 0, '12012519');
    axis([0, 360, -1, 1]);
    pause(0.1);
    M(idx) = getframe;
    theta = theta + 10;
    idx = idx+1;
end
movie(M);
v = VideoWriter('hw8.avi');
v.open();
v.writeVideo(M);
v.close();

filename = "hw8.gif"; % Specify the output file name
for idx = 1:10
    [A,map] = rgb2ind(frame2im(M(idx)),256);
    if idx == 1
        imwrite(A,map,filename,"gif","LoopCount",Inf,"DelayTime",1);
    else
        imwrite(A,map,filename,"gif","WriteMode","append","DelayTime",1);
    end
end


function out=check_year() 
    day = date;
    day = day(end-3:end);
    day = str2num(day);
    day2 = fix(clock);
    day2 = day2(1);
    out = day == day2;
end

function out=rid_multiple_blanks(str)
    pat = whitespacePattern();
    out = replace(str, pat, ' ');
end

function []=check_name(objs)
    h_avg = mean([objs.height]);
    w_avg = mean([objs.weight]);
    names = [objs([objs.height] < h_avg | [objs.weight] < w_avg)];
    names = char(names.name);
    disp(names);
end
