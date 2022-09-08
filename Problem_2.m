%% Image reading

left_image= imread('viewL-1.png');
right_image= imread('viewR.png');
truth = load('disparity.mat');
%%


%% For SSD
method= 'SSD';
disp1 = compute_corrs(left_image, right_image,method );

figure(1);
imshow(disp1, []),title('Disparity Map For SSD');
colormap(jet);
axis image;
colorbar;


get_value = double(disp1);
truth_value = double(truth.L);
error_value = truth_value-get_value;
fprintf('\n Resul for SSD \n' )
fprintf('\n Max error for SSD %.0f%  \n', max(max(error_value)))
fprintf('\n Min error for SSD %.0f%  \n', min(min(error_value)))
fprintf('\n Mean error for SSD %.0f%  \n', mean2(error_value))
fprintf('\n Standard Deviation of error for SSD %.0f%  \n', std2(error_value)) 
fprintf('\n *************************\n' ) 

%% For CC
method= 'CC';
disp2 = compute_corrs(left_image, right_image,method );

figure(2);
imshow(disp2, []),title('Disparity Map For CC');
colormap(jet);
axis image;
colorbar;


get_value = double(disp2);
truth_value = double(truth.L);
error_value = truth_value-get_value;
fprintf('\n Resul for CC \n' )
fprintf('\n Max error for CC %.0f%  \n', max(max(error_value)))
fprintf('\n Min error for CC %.0f%  \n', min(min(error_value)))
fprintf('\n Mean error for CC %.0f%  \n', mean2(error_value))
fprintf('\n Standard Deviation of error for CC %.0f%  \n', std2(error_value))
fprintf('\n *************************\n' ) 




%% For NCC
method= 'NCC';
disp3 = compute_corrs(left_image, right_image,method );

imshow(disp3, []),title('Disparity Map For NCC');
colormap(jet);
axis image;
colorbar;

get_value = double(disp3);
truth_value = double(truth.L);
err = immse(get_value, truth_value);
error_value = truth_value-get_value;
fprintf('\n Resul for NCC \n' )
fprintf('\n Max error for NCC %.0f%  \n', max(max(error_value)))
fprintf('\n Min error for NCC %.0f%  \n', min(min(error_value)))
fprintf('\n Mean error for NCC %.0f%  \n', mean2(error_value))
fprintf('\n Standard Deviation of error for CC %.0f%  \n', std2(error_value))
fprintf('\n *************************\n' ) 
