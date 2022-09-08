% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 667.497203996668532 ; 664.071265903423637 ];

%-- Principal point:
cc = [ 353.939183041995250 ; 217.446071612844435 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.054269896066098 ; -0.062534910803193 ; -0.009553245729625 ; 0.008299399234433 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 12.298485092520137 ; 11.186965446709836 ];

%-- Principal point uncertainty:
cc_error = [ 16.777574912661393 ; 13.496858621506433 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.064908708995092 ; 0.170365112999789 ; 0.006808243889308 ; 0.011259685843038 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 12;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.113225e+00 ; 1.872894e+00 ; -8.723256e-02 ];
Tc_1  = [ -2.190507e+02 ; -1.096543e+02 ; 9.087711e+02 ];
omc_error_1 = [ 1.488946e-02 ; 1.665707e-02 ; 4.323297e-02 ];
Tc_error_1  = [ 2.286642e+01 ; 1.871279e+01 ; 1.634521e+01 ];

%-- Image #2:
omc_2 = [ -2.106323e+00 ; -2.119013e+00 ; -2.871967e-01 ];
Tc_2  = [ -3.306397e+02 ; -1.053626e+02 ; 9.249271e+02 ];
omc_error_2 = [ 1.991842e-02 ; 1.856191e-02 ; 4.187363e-02 ];
Tc_error_2  = [ 2.335987e+01 ; 1.943173e+01 ; 1.893876e+01 ];

%-- Image #3:
omc_3 = [ 1.830604e+00 ; 1.094401e+00 ; 4.603009e-01 ];
Tc_3  = [ -3.059863e+02 ; -6.477620e+01 ; 8.515606e+02 ];
omc_error_3 = [ 1.793895e-02 ; 1.667725e-02 ; 2.910019e-02 ];
Tc_error_3  = [ 2.151222e+01 ; 1.782889e+01 ; 1.762253e+01 ];

%-- Image #4:
omc_4 = [ -2.092013e+00 ; -1.835127e+00 ; 1.080003e+00 ];
Tc_4  = [ -2.229157e+02 ; -3.705736e+01 ; 1.031348e+03 ];
omc_error_4 = [ 2.342738e-02 ; 1.305532e-02 ; 3.386610e-02 ];
Tc_error_4  = [ 2.560537e+01 ; 2.121402e+01 ; 1.633009e+01 ];

%-- Image #5:
omc_5 = [ 2.266319e+00 ; 1.985705e+00 ; 2.966344e-01 ];
Tc_5  = [ -1.060251e+00 ; -1.484433e+02 ; 1.028439e+03 ];
omc_error_5 = [ 2.559925e-02 ; 2.334351e-02 ; 5.284644e-02 ];
Tc_error_5  = [ 2.607287e+01 ; 2.088976e+01 ; 1.891086e+01 ];

%-- Image #6:
omc_6 = [ -1.844931e+00 ; -1.940169e+00 ; -8.795153e-01 ];
Tc_6  = [ -3.119228e+02 ; -3.806753e+02 ; 1.397598e+03 ];
omc_error_6 = [ 1.867823e-02 ; 2.189111e-02 ; 3.751443e-02 ];
Tc_error_6  = [ 3.588139e+01 ; 2.952189e+01 ; 2.834194e+01 ];

%-- Image #7:
omc_7 = [ -1.804537e+00 ; -1.868519e+00 ; -9.368543e-01 ];
Tc_7  = [ -2.907408e+02 ; -2.567616e+02 ; 1.034070e+03 ];
omc_error_7 = [ 1.592721e-02 ; 1.978658e-02 ; 3.363861e-02 ];
Tc_error_7  = [ 2.649378e+01 ; 2.184731e+01 ; 2.124332e+01 ];

%-- Image #8:
omc_8 = [ -1.759384e+00 ; -1.756620e+00 ; -8.977003e-01 ];
Tc_8  = [ -2.830622e+02 ; -1.526003e+02 ; 7.958349e+02 ];
omc_error_8 = [ 1.582888e-02 ; 1.855221e-02 ; 3.120792e-02 ];
Tc_error_8  = [ 2.027508e+01 ; 1.683688e+01 ; 1.687169e+01 ];

%-- Image #9:
omc_9 = [ -2.191725e+00 ; -2.228521e+00 ; 2.177551e-02 ];
Tc_9  = [ -2.426835e+02 ; -4.120350e+01 ; 5.817750e+02 ];
omc_error_9 = [ 1.917891e-02 ; 1.725192e-02 ; 3.789494e-02 ];
Tc_error_9  = [ 1.460348e+01 ; 1.226643e+01 ; 1.153937e+01 ];

%-- Image #10:
omc_10 = [ 1.704149e+00 ; 1.663207e+00 ; 1.083454e+00 ];
Tc_10  = [ -2.412998e+02 ; -7.989719e+01 ; 6.869075e+02 ];
omc_error_10 = [ 2.125054e-02 ; 1.695391e-02 ; 3.054477e-02 ];
Tc_error_10  = [ 1.730045e+01 ; 1.438641e+01 ; 1.430724e+01 ];

%-- Image #11:
omc_11 = [ 1.961696e+00 ; 1.541096e+00 ; 1.379037e+00 ];
Tc_11  = [ -2.312757e+02 ; 1.115782e+02 ; 6.787135e+02 ];
omc_error_11 = [ 2.668813e-02 ; 1.182725e-02 ; 3.313742e-02 ];
Tc_error_11  = [ 1.723375e+01 ; 1.425568e+01 ; 1.605936e+01 ];

%-- Image #12:
omc_12 = [ 1.715273e+00 ; 1.556756e+00 ; -7.851123e-01 ];
Tc_12  = [ -2.171354e+02 ; 1.585159e+02 ; 1.094564e+03 ];
omc_error_12 = [ 1.625224e-02 ; 1.866701e-02 ; 3.180154e-02 ];
Tc_error_12  = [ 2.768987e+01 ; 2.260410e+01 ; 1.914002e+01 ];

