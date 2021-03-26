# Configurable Multi-Stage Waitbar for Matlab

Fully configuarble waitbar for matlab which allows multiple progress bars to be simultaneously shown with respective labels and colour association.

This code was originally written for Matlab R2018A.

### Example

Example use of waitbar.m where three progressbars are simultaneously displayed and update as each of the nested loops are iterated through.

```matlab
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
```

Normalised_Array.m only serves the purpose of scaling the inputs if required.

Each individual bar has a Progress, Title and Colour associated with it where X denotes the individual bar.

Progress(x).Progress relates to the display of each individual progress bar. Progress values should be within the interval 0 (empty) to 1 (full).
Progress(x).Title relates to the text associated with each individual progress bar.
Progress(x).Colour relates to the colour specification of each individual progress bar.

## Built With

* [Matlab R2018A](https://www.mathworks.com/products/matlab.html) - Matlab 2018A IDE

## Contributing

This code is considered finished and will not be actively maintained.

## Authors

* **Alex Hogg** - *Initial work* - [Phy3hogga](https://github.com/Phy3hogga)