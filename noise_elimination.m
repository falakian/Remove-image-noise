function output_image = noise_elimination(Input_Image)

    % Set kernel size
    % By default it is 3
    kernel_size = 3;

    output_image = Input_Image;
    % Padding according to kernel size
    image = padarray(Input_Image, [floor(kernel_size/2), floor(kernel_size/2)], "replicate", "both");
    height = size(Input_Image, 1);
    width = size(Input_Image, 2);
    
    for i=1:height
        for j=1:width
            if(Input_Image(i,j) > 0 && Input_Image(i,j) < 255)
                continue
            end
            kernel = image(i:i+kernel_size-1, j:j+kernel_size-1 , :);
            % remove noise values
            without_noise = kernel(kernel>0 & kernel<255);
            if(length(without_noise) < 6)
                if(length(without_noise) < 1)
                    output_image(i,j) = mean(kernel(:));
                else
                    output_image(i,j) = mean(without_noise);
                end
            else
                output_image(i,j) = median(without_noise , 1);
            end
        end
    end
end