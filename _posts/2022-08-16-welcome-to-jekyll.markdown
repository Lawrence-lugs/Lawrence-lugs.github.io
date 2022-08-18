---
title: RNG using VCMA Magnetic Tunnel Junctions
layout: post
date: '2022-08-16 23:00:52 +0200'
categories:
- jekyll
- update
---

Magnetic Tunnel Junctions are magnetic memory devices with two single-domain magnets one of whose magnetization direction is pinned (pinned layer PL) and one whose magnetization can change (free layer FL).

The MTJ nanodevice is sensitive to thermal excitations, causing some problems for data retention and probabilistic behaviour when writing. On the other hand, this probabilistic behaviour of the MTJ makes it a good candidate for use in RNG!

# 

# Voltage-Controlled Magnetic Anisotropy

The perpendicular anisotropy in very thin barrier CoFeB-MgO MTJs arises from interfacial interactions of the atoms in the interface between the FL and the barrier. Applying a voltage on the MTJ affects the orbital dynamics at the FL/tunnel barrier causing a lowering of the energy barrier between the P and AP states. A strong enough voltage causes the barrier to essentially become negative, and the state between P and AP becomes the lowest-energy configuration, causing the FL magnetization to oscillate. With this voltage-controlled magnetic anisotropy, one can be used to switch the state of the MTJ.

If the voltage is kept, the magnetization doesn't oscillate forever. It eventually settles in a metastable in-between direction. The final FL direction once the voltage is removed is **truly random** (largely dependent on **random thermal excitation**).

# References

1. Quizon, Lawrence Roman A., et al. "A Voltage-Controlled Magnetic Anisotropy based True Random Number Generator." 2021 18th International SoC Design Conference (ISOCC). IEEE, 2021.
