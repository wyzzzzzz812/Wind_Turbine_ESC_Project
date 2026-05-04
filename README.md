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
