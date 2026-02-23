# MRR Equations
MATLAB implementation of the six coupled differential equations describing the nonlinear dynamics of a silicon microring resonator (MRR) for photonic reservoir computing.
Based on: Giron Castro et al., Optics Express, Vol. 32, No. 2, January 2024. DOI: 10.1364/OE.509437

eq1_modal_amplitude.m
Describes how the optical field inside the ring evolves over time. Light is pumped in by the laser and drained by losses and detuning.

eq2_free_carrier.m
Tracks the density of free carriers (electrons and holes) inside the ring. Carriers are created by two-photon absorption and naturally recombine over time.

eq3_temperature.m
Tracks how the ring heats up from absorbed optical power and cools down by conducting heat into the surrounding material.

eq4_frequency_detuning.m
Computes the effective detuning between the laser and the ring's resonance at any instant. Free carriers shift the resonance blue; heat shifts it red.

eq5_total_loss.m
Sums all the loss mechanisms draining light from the ring: linear waveguide loss, coupling loss, two-photon absorption, and free-carrier absorption.

eq6_absorbed_power.m
Computes how much optical power is converted to heat inside the ring. This feeds directly into Eq. 3 as the thermal source term.
