# data_magneto_models
Database of Magnetospheric Accretion Models

Calculated following Hartmann et al. 1994 and Muzerolle et al. 2001

This repository contains the raw model data. For easy visualization of the files use tool:

Each file name is as such:
<code>prof.\<line>.\<geometry>.\<Mdot>.\<Tmax>.\<inclination>.0</code>

- line: which line is modeled (Hα = h23, Hβ = h24, CaIIK = ca15)
- geometry: the geometry of the disk, this is of the form GXX, where X is between 01-36. The geometries are parametrized as the inner radius of the magnetosphere and the width of the magnetosphere in units of R<sub>*</sub>.
- Mdot: the accretion rate (M<sub>$\odot$</sub>/yr), this is of the form MXX, where X is between 01-13.
- Tmax: the maxmimum temperature (Kelvin), this is of the form TXX, where X is between 01-16,
- Inclination: the inclination of the magnetosphere in degrees, this is of the form IXX, where X is any of [15, 30, 45, 60, 75].

The file models/magnetomodels-ids.csv lists the correspondences between an ID number
and the model parameters. 

An example file name is <code>prof.h23.G01.M01.T03.I45.0</code>, 
which would query the Hα line with a geometry of R<sub>in</sub>=2, width=0.5, an accretion rate of -7, max temperature of 9500K, and an inclination of 45 degrees.

Each file contains:
Line profile in flux are per unit frequency (erg/s/cm^2/Hz) and velocity (km/s)
Calculated at the surface of each star (see Stellar Parameter table)
to convert to luminosity (per unit frequency) multiply by 4$\pi$R<sub>mod<sub>^2
