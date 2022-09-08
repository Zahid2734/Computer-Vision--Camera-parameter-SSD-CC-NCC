% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 672.838975236004558 ; 666.863020056324217 ];

%-- Principal point:
cc = [ 376.794650114543799 ; 242.885158734300518 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.009953422350481 ; 0.446661480741685 ; -0.001821739247694 ; 0.020399040988932 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 13.762001081111491 ; 12.773691183217823 ];

%-- Principal point uncertainty:
cc_error = [ 17.634743640020247 ; 11.625957997335052 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.079752752525964 ; 0.440567829669514 ; 0.007150447185980 ; 0.011040635589619 ; 0.000000000000000 ];

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
omc_1 = [ 2.241209e+00 ; 2.020232e+00 ; -2.927747e-02 ];
Tc_1  = [ -1.512074e+02 ; -1.467999e+02 ; 9.119353e+02 ];
omc_error_1 = [ 1.886333e-02 ; 2.110675e-02 ; 5.361894e-02 ];
Tc_error_1  = [ 2.404559e+01 ; 1.600656e+01 ; 1.730633e+01 ];

%-- Image #2:
omc_2 = [ -2.060909e+00 ; -2.111484e+00 ; -3.393401e-01 ];
Tc_2  = [ -2.539692e+02 ; -1.435395e+02 ; 9.162925e+02 ];
omc_error_2 = [ 1.959587e-02 ; 1.933172e-02 ; 4.145469e-02 ];
Tc_error_2  = [ 2.421722e+01 ; 1.656500e+01 ; 1.916141e+01 ];

%-- Image #3:
omc_3 = [ 1.839759e+00 ; 1.065057e+00 ; 5.609758e-01 ];
Tc_3  = [ -2.235818e+02 ; -9.753992e+01 ; 8.374903e+02 ];
omc_error_3 = [ 1.676007e-02 ; 1.834794e-02 ; 2.697192e-02 ];
Tc_error_3  = [ 2.213941e+01 ; 1.495253e+01 ; 1.789164e+01 ];

%-- Image #4:
omc_4 = [ -2.052074e+00 ; -1.851495e+00 ; 1.068908e+00 ];
Tc_4  = [ -1.459583e+02 ; -7.711970e+01 ; 1.034326e+03 ];
omc_error_4 = [ 2.455261e-02 ; 1.345567e-02 ; 3.430000e-02 ];
Tc_error_4  = [ 2.711124e+01 ; 1.826592e+01 ; 1.730162e+01 ];

%-- Image #5:
omc_5 = [ 2.251041e+00 ; 2.007736e+00 ; 3.970920e-01 ];
Tc_5  = [ 9.101186e+01 ; -1.889875e+02 ; 1.016087e+03 ];
omc_error_5 = [ 2.259083e-02 ; 2.054984e-02 ; 4.377164e-02 ];
Tc_error_5  = [ 2.736494e+01 ; 1.779356e+01 ; 2.151575e+01 ];

%-- Image #6:
omc_6 = [ -1.820278e+00 ; -1.925104e+00 ; -9.131097e-01 ];
Tc_6  = [ -2.420957e+02 ; -4.340565e+02 ; 1.383511e+03 ];
omc_error_6 = [ 1.835066e-02 ; 2.157057e-02 ; 3.703095e-02 ];
Tc_error_6  = [ 3.764750e+01 ; 2.535079e+01 ; 2.985961e+01 ];

%-- Image #7:
omc_7 = [ -1.781725e+00 ; -1.850502e+00 ; -9.503557e-01 ];
Tc_7  = [ -2.128659e+02 ; -2.904966e+02 ; 1.007500e+03 ];
omc_error_7 = [ 1.461366e-02 ; 1.912600e-02 ; 3.240330e-02 ];
Tc_error_7  = [ 2.728795e+01 ; 1.842060e+01 ; 2.160083e+01 ];

%-- Image #8:
omc_8 = [ -1.721599e+00 ; -1.741581e+00 ; -9.333592e-01 ];
Tc_8  = [ -2.051349e+02 ; -1.820702e+02 ; 7.896017e+02 ];
omc_error_8 = [ 1.364600e-02 ; 1.817269e-02 ; 3.000437e-02 ];
Tc_error_8  = [ 2.115844e+01 ; 1.439945e+01 ; 1.692086e+01 ];

%-- Image #9:
omc_9 = [ -2.164891e+00 ; -2.229628e+00 ; -3.653218e-02 ];
Tc_9  = [ -1.627117e+02 ; -6.602696e+01 ; 5.773781e+02 ];
omc_error_9 = [ 1.746605e-02 ; 1.785350e-02 ; 4.036973e-02 ];
Tc_error_9  = [ 1.518448e+01 ; 1.028349e+01 ; 1.136309e+01 ];

%-- Image #10:
omc_10 = [ 1.709902e+00 ; 1.649409e+00 ; 1.123659e+00 ];
Tc_10  = [ -1.644092e+02 ; -1.176683e+02 ; 6.867685e+02 ];
omc_error_10 = [ 2.138651e-02 ; 1.785696e-02 ; 2.584231e-02 ];
Tc_error_10  = [ 1.836699e+01 ; 1.234252e+01 ; 1.493641e+01 ];

%-- Image #11:
omc_11 = [ 1.961867e+00 ; 1.539838e+00 ; 1.420117e+00 ];
Tc_11  = [ -1.544328e+02 ; 8.213660e+01 ; 6.848290e+02 ];
omc_error_11 = [ 2.695854e-02 ; 1.234630e-02 ; 3.057083e-02 ];
Tc_error_11  = [ 1.822472e+01 ; 1.216114e+01 ; 1.678862e+01 ];

%-- Image #12:
omc_12 = [ 1.742686e+00 ; 1.591868e+00 ; -7.389727e-01 ];
Tc_12  = [ -1.454014e+02 ; 1.162272e+02 ; 1.101853e+03 ];
omc_error_12 = [ 1.398061e-02 ; 1.786857e-02 ; 3.257381e-02 ];
Tc_error_12  = [ 2.899432e+01 ; 1.953477e+01 ; 2.022631e+01 ];

