function disp = compute_corrs(img_left, img_right,method )


    img_left =  double(rgb2gray(img_left));
    img_right =  double(rgb2gray(img_right));
    disp_value = 100;        
    win_size = 7;
    length = (win_size-1)/2;
    method= method;
    min_val = 0.0;

    disp = zeros(size(img_left,1), size(img_left,2));
    tic();
    for i = 1+length:size(img_left,1)-length
        for j = 1+length:size(img_left,2)-length-disp_value
           
            if method == "SSD"
                cap = 100000;
                values = min_val;
                for disp_Range = min_val:disp_value
                    ssd=0.0;
                    t = -length:length;
                    if (j+length+disp_Range <= size(img_left,2))
                        bla = img_right(i+t,j+t)-img_left(i+t,j+t+disp_Range);
                        bla = bla.^2;
                    ssd = sum(sum(bla));
                    end
                    if (cap > ssd)
                        cap = ssd;
                        values = disp_Range;
                    end
                end
               
                
            elseif method == "NCC"  
                max_Corr = 0.0;
                values = min_val;
                for disp_Range = min_val:disp_value
                    t = -length:length;
                    Correlation=sum(sum(img_right(i+t,j+t).*img_left(i+t,j+t+disp_Range)))/sqrt((sum(sum(img_right(i+t,j+t).*img_right(i+t,j+t))))*(sum(sum(img_left(i+t,j+t+disp_Range).*img_left(i+t,j+t+disp_Range)))));

                     if (max_Corr < Correlation)
                        max_Corr = Correlation;
                        values = disp_Range;
                    end
                end
             elseif method =="CC"
                    max_Corr = 0.0;
                values = min_val;
                for disp_Range = min_val:disp_value
                    t = -length:length;
                    Correlation=sum(sum(img_right(i+t,j+t).*img_left(i+t,j+t+disp_Range)));

                     if (max_Corr < Correlation)
                        max_Corr = Correlation;
                        values = disp_Range;
                    end
                end 
             end
            disp(i,j) = values;
        end
        
    
    end
    time = toc();
    fprintf('Time taken for computing disparity map is %.2f sec.\n', time);
end