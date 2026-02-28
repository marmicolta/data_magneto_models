# Database of Magnetospheric Accretion Models for T Tauri Stars
Open library of Magnetospheric Accretion Models for T Tauri stars.

Magnetospheric accretion model references: [Hartmann et al. (1994)](https://ui.adsabs.harvard.edu/abs/1994ApJ...426..669H/abstract) and [Muzerolle et al. (2001)](https://ui.adsabs.harvard.edu/abs/2001ApJ...550..944M/abstract)
Calculated by [Thanawuth (Atom) Thanathibodee](https://www.frontier.phys.sc.chula.ac.th/thanawut-w) and [Marbely Micolta](https://sites.google.com/umich.edu/marbelymicolta?usp=sharing)

This repository contains the raw model data. For easy visualization of profiles, we are developing an interactive visualization tool (coming soon! Currently in development, contact us if needed).

## Usage:
We do not recommend cloning the full repository; single files can be queried if the file name is known (see file name structure below).
If only a few specific models are used, please cite the repo. 
If you wish to use the full dataset, please contact the authors: Marbely Micolta (micoltam[at]umich.edu) and Thanawuth Thanathibodee (thanawuth.t[at]chula.ac.th)

## Lines available

Hydrogen lines:

'h23': Hα \
'h24': Hβ \
'h25': Hγ \
'h35': Paβ \
'h36': Paγ \
'h37': Paδ \
'h47': Brγ

Calcium lines:

'ca15': Ca II K \
'ca25': Ca II 8498 \
'ca35': Ca II 8542
 
## Parameters

The file models/magnetomodels-ids.csv lists the correspondences between an ID number and the Magnetospheric parameters. Model stellar parameters are described in model_stellar_parameters

- geometry: the geometry of the disk, this is of the form GXX, where X is between 01-36(see note). The geometries are parametrized by the inner radius and width of the magnetosphere, both in units of R<sub>*</sub>.
- Mdot: the accretion rate (M<sub>$\odot$</sub>/yr), this is of the form MXX, where X is between 01-13.
- Tmax: the maximum temperature of the flow (Kelvin), this is of the form TXX, where X is between 01-16,
- Inclination: the inclination of the magnetosphere in degrees, this is of the form IXX, where X is any of [15, 30, 45, 60, 75].

- Ca abundances: All calcium lines have solar abundance. Lines Ca:15,25,35 have a grid in abundances from 1 to 0.01 solar abundances. Detailed ID of each abundance in ca_abundance.csv

Note:

Higher hydrogen transitions as well as Ca II transitions: 1-4 (Ca II H) and 2-4 are available for the first 6 (basic) geometries and only solar abundance in tar.gz files.
 
The file line_geo_extension.csv lists the index of the maximum possible geometry for each line.


## File name structure:

Each file name is as such:

- For hydrogen lines: 
  
  <code>prof.\<line>.\<geometry>.\<Mdot>.\<Tmax>.\<inclination>.0</code>
  
  An example file name is <code>prof.h23.G01.M01.T03.I45.0</code>, which would correspond to the Hα line with a geometry of R<sub>in</sub>=2, width=0.5, an accretion rate of -7, max temperature of 9500K, and an inclination of 45 degrees.

- For calcium lines:

  <code>prof.\<line>.\<abundance>.\<geometry>.\<Mdot>.\<Tmax>.\<inclination>.0</code>
  
    An example file name is <code>prof.ca15.Ca_0p5.G01.M01.T03.I45.0</code>, which would correspond to the Ca II K line with an abundance of 0.5 (50% Solar), geometry of R<sub>in</sub>=2, width=0.5, an accretion rate of -7, max temperature of 9500K, and an inclination of 45 degrees.

## Units:
Each file contains:
Line profiles are in flux per unit frequency (erg/s/cm^2/Hz) and velocity (km/s). 
Calculated at the surface of each star (see Stellar Parameter table), i.e., to convert to luminosity (per unit frequency) multiply by 4πR<sub>*,mod</sub>^2

## Related papers:
- [Micolta et al. (2024)](https://ui.adsabs.harvard.edu/abs/2024ApJ...976..251M/abstract)
- [Micolta et al. (2023)](https://ui.adsabs.harvard.edu/abs/2023ApJ...953..177M/abstract)
- [Thanathibodee et al. (2023)](https://ui.adsabs.harvard.edu/abs/2023ApJ...944...90T/abstract)
- [Thanathibodee et al. (2020)](https://ui.adsabs.harvard.edu/abs/2020ApJ...892...81T/abstract)
- [Thanathibodee et al. (2019)](https://ui.adsabs.harvard.edu/abs/2019ApJ...884...86T/abstract)

## License

This repository contains data only.

The dataset is licensed under the Creative Commons Attribution 4.0
International License (CC BY 4.0). See `LICENSE.txt` for details.


