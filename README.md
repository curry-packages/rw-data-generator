rw-data-generator
=================

This package contains the implementation of a tool `curry-rw-data`
which generates read and write operations for all types
defined in a given module. For this purpose, the tool
generates instances of the class `ReadWrite` (see module `RW.Base`
of package `rw-data`) for the given type declarations.

Usage
-----

If the module `Mod` contains definitions of data types,
the command

    > curry-rw-data Mod

generates a new Curry module `ModRW` containing instance
definition of class `ReadWrite` for all types defined in `Mod`.
In order to store or read these data in a compact format,
one has to import the module `Mod`, `ModRW` and `RW.Base`
in order to use the operations `writeDataFile` or
`readDataFile` defined in module `RW.Base` of package `rw-data`.

Documentation
-------------

The ideas and description of the compact data representation
are described in the bachelor's thesis

[Compact Representation of Data Terms](https://www.michaelhanus.de/lehre/abschlussarbeiten/bsc/Zuengel_Lasse.pdf)
(in German, by Lasse Züngel, CAU Kiel, March 2024)
