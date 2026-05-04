%Plant Model
rho = 1.225;          % kg/m^3

% NREL 5MW
R   = 63;             % m
A   = pi * R^2;       % m^2

Ng  = 97;             
J   = 3.9e7;          % kg·m^2，

omega_r_rated = 12.1 * pi/30;   % rad/s


omega_epsilon = 0.1;  % rad/s

lambda_vec = [0 4 6 8 10 12 14];
beta_vec   = [0 5 10 15 20 25];

Cp_table = [
    0.000 0.299 0.436 0.389 0.248 0.073 0.000;
    0.000 0.249 0.347 0.338 0.274 0.187 0.095;
    0.000 0.247 0.282 0.222 0.120 0.005 0.000;
    0.000 0.225 0.198 0.091 0.000 0.000 0.000;
    0.000 0.182 0.096 0.000 0.000 0.000 0.000;
    0.000 0.119 0.000 0.000 0.000 0.000 0.000
];
%Torque Controller
lambda_opt = 7.55;
p_g_rated = 5.3e6;
omega_g_rated = 1173.7*pi/30;
B_tau_g = -Ng^2/J;
tau_g_rated = p_g_rated/omega_g_rated;
damp_tau_des = 0.8;
omega_tau_des = 0.15;
A_tau_vop = -0.09;
kp_tau = (2*damp_tau_des*omega_tau_des+A_tau_vop)/B_tau_g;
ki_tau = omega_tau_des^2/B_tau_g;
K_tau = (pi*rho*R^5*0.482)/(2*lambda_opt^3*Ng^3);
omega_g_min = 398*pi/30;

%Blade Pitch Controller
beta_min = 0;
damp_beta_des = 0.7;
omega_beta_des = 0.6;

%Wind Speed Estimator
Rm = 0.02;
ti = 0.18;
L = 6*R;

%Extremum Seeking Control Parameters
amp_T = 0.05;
amp_P = 0.3;
omega_T = 0.1;
omega_P = 2*pi*0.5;
omega_hp = 0.05;
omega_lpT = 2*pi*0.03;
omega_lpP = 2*pi*0.05;

gamma_P = 1.75e-5;
gamma_T = 5e-4;

tau_beta = 0.3;
tau_tau = 0.1;