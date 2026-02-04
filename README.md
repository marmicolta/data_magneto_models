# Database of Magnetospheric Accretion Models for T Tauri Stars

Magnetospheric accretion model references: Hartmann et al. 1994 and Muzerolle et al. 2001
Calculated by Thanawuth Thanathibodee and Marbely Micolta

This repository contains the raw model data. For easy visualization of profiles, we are developing an interactive visualization tool (coming soon! Currently in beta version, contact us if needed). We do not recommend cloning the full repository; single files can be queried if the file name is known (see file name structure below).

Each file name is as such:
<code>prof.\<line>.\<geometry>.\<Mdot>.\<Tmax>.\<inclination>.0</code>

- line: which line is modeled (example: Hα = h23, Hβ = h24, CaIIK = ca15). All lines availble are: h23, h24, h25, h35, h36, h37, h47, ca15, ca25, ca35
- geometry: the geometry of the disk, this is of the form GXX, where X is between 01-36. The geometries are parametrized by the inner radius and width of the magnetosphere, both in units of R<sub>*</sub>.
- Mdot: the accretion rate (M<sub>$\odot$</sub>/yr), this is of the form MXX, where X is between 01-13.
- Tmax: the maximum temperature of the flow (Kelvin), this is of the form TXX, where X is between 01-16,
- Inclination: the inclination of the magnetosphere in degrees, this is of the form IXX, where X is any of [15, 30, 45, 60, 75].

The file models/magnetomodels-ids.csv lists the correspondences between an ID number
and the model parameters. 

An example file name is <code>prof.h23.G01.M01.T03.I45.0</code>, 
which would query the Hα line with a geometry of R<sub>in</sub>=2, width=0.5, an accretion rate of -7, max temperature of 9500K, and an inclination of 45 degrees.

Each file contains:
Line profiles are in flux per unit frequency (erg/s/cm^2/Hz) and velocity (km/s). 
Calculated at the surface of each star (see Stellar Parameter table), i.e., to convert to luminosity (per unit frequency) multiply by 4πR<sub>*,mod<sub>^2
