# Pathogen.jl
[![Build Status](https://travis-ci.org/jangevaare/Pathogen.jl.svg?branch=master)](https://travis-ci.org/jangevaare/Pathogen.jl)

![Epidemic simulation](epianimation.gif?raw=true)

Pathogen.jl is a Julia software package for individual level models of infectious diseases (Deardon et al, 2010). It's capabilities include stochastic simulation and [Bayesian] inference of SEIR, SEI, SIR, and SI individual level models, with fully customizable functions describing individual specific transition rates between disease states (i.e. form of, and relevant risk factors to, susceptibility, transmissibility, transmissability, latency, removal, and sparks functions). Pathogen.jl is written purely in Julia, which enables this generality without incurring performance costs.

Pathogen.jl infers transmission pathways (i.e. who-infected-who). This inference is completed using a Gibbs step in our specialized MCMC algorithm. This specialized MCMC algorithm also performs event time data augmentation.

Examples of Pathogen.jl workflow are included in the examples directory.
1. [SEIR simulation, inference, and visualization](examples/01_SEIR_Simulation_and_Visualization.ipynb)
2. [SI model inference for a Tomato Spotted Wilt Virus Experiment](examples/02_TSWV_Inference.ipynb)
