## mirage-ptime -- a POSIX clock for MirageOS

This library implements portable support for an operating system timesource
that is compatible with the [MirageOS](https://mirageos.org) library interfaces
found in: <https://github.com/mirage/mirage>

It implements Mirage_ptime which is a clock that counts time since the Unix
epoch.

The following sources are used:

* The Unix version uses [Ptime_clock](https://erratique.ch/software/ptime),
* The freestanding version uses the paravirtual clock source from the hypervisor.
