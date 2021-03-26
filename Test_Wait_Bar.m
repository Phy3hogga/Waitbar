%Setup
clear all;

%Set progressbar titles
Progress(1).Title = 'i';
Progress(2).Title = 'j';
Progress(3).Title = 'k';
%Set progressbar colours
Progress(1).Colour = 'r';
Progress(2).Colour = 'g';
Progress(3).Colour = 'b';
%Create progressbar figure
Progress_Figure = Multiple_Wait_Bar(Progress);
%Loop through all 3 progressbars
for i = 0:0.2:1
    Progress(1).Progress = i;
    for j = 0:0.2:1
        Progress(2).Progress = j;
        for k = 0:0.1:1
            Progress(3).Progress = k;
            Progress_Figure = Multiple_Wait_Bar(Progress, Progress_Figure);
        end
    end
end