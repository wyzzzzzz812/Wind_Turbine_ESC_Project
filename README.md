# Wind Turbine ESC Project

This repository contains the MATLAB/Simulink software artefacts for the final-year project:

**Design and Evaluation of a Torque-Based Extremum Seeking Controller for Below-Rated Wind Turbine Power Maximization**

## Project Overview

This project develops a simplified control-oriented wind turbine model and compares a ROSCO-style baseline controller with a torque-based Extremum Seeking Control (ESC) strategy. The ESC controller adapts the torque gain \(K_\tau\) using measured electrical power as the optimisation signal.

The repository provides the main MATLAB parameter file and Simulink models required to reproduce or evaluate the simulation work discussed in the final report.

## Repository Structure

```text
Wind_Turbine_ESC_Project/
│
├── parameters/
│   └── plant_params.m
│
├── models/
│   ├── ROSCO_vs_ESC.slx
│   └── wind_speed_model.slx
│
├── README.md
└── .gitignore
Main Files
parameters/plant_params.m

This MATLAB script defines the main parameters used in the simulations, including:

wind turbine plant model constants;
simplified Cp(lambda, beta) lookup table;
ROSCO-style controller parameters;
wind speed estimator settings;
ESC tuning parameters.

This file should be run before opening or simulating the Simulink models.

models/ROSCO_vs_ESC.slx

This is the main Simulink model used to compare the ROSCO-style baseline controller with the torque-based ESC controller.

The model can be used to:

test the ROSCO-style baseline controller;
test the torque-based ESC controller;
compare ROSCO and ESC under the same below-rated wind-speed input;
observe electrical power, generator speed, generator torque and the adapted ESC torque gain K_tau.

This is the main model used to generate the ROSCO vs ESC comparison results discussed in the final report.

models/wind_speed_model.slx

This Simulink model was used to generate the wind-speed profile for testing the ROSCO-style baseline controller and the wind speed estimator.

This wind-speed model is separate from the wind-speed input used in the ROSCO vs ESC comparison model.
Software Requirements

The files were developed using MATLAB and Simulink.

Required software:

MATLAB
Simulink
How to Run
Download or clone this repository.
Open MATLAB.
Set the MATLAB working directory to the repository folder.
Run the parameter script: run('parameters/plant_params.m')
Open the ROSCO vs ESC comparison model: open_system('models/ROSCO_vs_ESC.slx')
Run the simulation from Simulink.
Inspect the output signals, including electrical power, generator speed, generator torque and K_tau.
To open the wind speed model used for ROSCO validation, run: open_system('models/wind_speed_model.slx')
Notes

The wind turbine model is a simplified control-oriented model. It is intended for controller comparison and evaluation of ESC behaviour rather than high-fidelity aero-servo-elastic prediction.

The Cp(lambda, beta) surface used in this project is a simplified manually defined lookup table implemented through interpolation. Therefore, the simulation results should be interpreted as control-level results rather than exact aerodynamic performance predictions.

The submitted Simulink model is a clean version of the final implementation. Experimental or unused controller branches are not included.

Third-party and Referenced Work

The ROSCO-style controller was implemented based on published ROSCO controller principles. The ESC structure was developed based on extremum seeking control concepts for wind turbine energy capture discussed in the literature.

No third-party source code is included in this repository unless explicitly stated.

Academic Integrity Statement

This repository is submitted as supporting software material for the final-year project. The files are provided to support reproducibility and assessment of the work described in the final report.
