%% Function to normalise an array between 0 and 1
function Normalised_Array = Multiple_Wait_Bar_Normalize(Array)
    Array = double(Array - min(Array(:)));
    Normalised_Array = Array ./ max(Array(:));
end