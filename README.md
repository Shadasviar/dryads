# dryads
Different kinds of dryads for SLAV automated testing stack.

This repository contains an implementation of different combinations of `dryads`:
- `rpi3-rooted_android` - dryad with `Raspberry Pi 3` as supervisor and rooted `Android` smartphone as `DUT`.
- `cybermuxpi` - virtual machine which emulates muxpi with running `dryad` service. This `Vagrant` machine can be easily modified and configured for create  new dryads paired with virtual or physycal `DUT`. Change UUID of dryad when create new one from this file!
