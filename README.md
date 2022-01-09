# CI / CD Pipeline Information

[![Run MATLAB Tests on GitHub-Hosted Runner](https://github.com/cavediverchris/MATLAB-template-for-data-science/actions/workflows/runMatlabTests.yml/badge.svg?branch=main)](https://github.com/cavediverchris/MATLAB-template-for-data-science/actions/workflows/runMatlabTests.yml)

# Table of Contents

1. [Introduction](#introduction)
2. [Why MATLAB Projects](#why-matlab-projects)
3. [How to use this template](#how-to-use)

# Introduction <a name="introduction"></a>
This repository contains the template files to set up a MATLAB Project for the purposes of analysing data. This template is one of a collection of templates, the purpose of each is described below:

- App Development. This project has a folder structure and some utilities set up straight away that encourages well-structured and consistent project and code structure. The utilities are also there to help you get going quickly.
- Data Science. This project has a folder structure and some utilities that help you keep functions and analyses well organised based upon the practice that functions do the "heavy lifting" and that a high-level script or Live Script is used to walk-through the analysis being conducted.
- Designing Systems. This project has a folder structure and some utilities that are useful for when you are building Simulink and Simscape models.

For further information on MathWorks, MATLAB and Simulink please check out the website (https://www.mathworks.com/company/aboutus.html).

# Why MATLAB Projects?  <a name="why-matlab-projects"></a>
MATLAB Project are a feature within MATLAB that aims to provide a structed development environment both for solo development, but also for team working. This is achieved in collaboration with a revision control system such as Subversion or Git. At the time of writing, both Subversion (SVN) and Github are supported. In conjunction with the source control tool, MATLAB Project can be used to support both agile and robust development processes according to industry standards such as DO-178C, DO-254, DO-331 any many others.

A couple of the main reasons you want to use MATLAB Projects are:

- Easy integration with revision control systems
- Standardised development environment for all users

# How To Use This Template <a name="how-to-use"></a>
To start using this template to support your workflow, you first need to initialise a new project:

  1. Start MATLAB
  2. On the Home Tab across the top of the screen, click "New", then choose "Project", then choose "From Simulink Template"
  3. From the window that appears, you will see a collection of templates, choose the appropriate one and click "Create Project"
  4. In the pop-up window that appears, give your project a name (also update the Project Folder path with the name), and click "Create Project"

# Compatibility  <a name="compatibility"></a>

This has been built using MATLAB R2021A and it is not directly backward compatible with previous versions of MATLAB.