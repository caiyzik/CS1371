function [layers, final_vec] = deepestDive(arr)
    len = 1;
    final_vec = [];
    layers = 0;
    while len < 2
        arr1 = arr(1)
        arr2 = arr(2);
        layers = layers + 1;
        if length(arr1) == 1 & length(arr2) == 1
            final_vec = [final_vec, arr1{1}, arr2{1}];
            len = 2;
        elseif length(arr1) == 1
            final_vec = [final_vec arr1{1}];
      
        else
            arr = arr2;
        end
        
    end
    %final_vec = sort(final_vec);
end