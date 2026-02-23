function delta_omega = eq4_frequency_detuning(Delta_N, Delta_T, Delta_omega_pump)
%   delta_omega(t) = omega_p - omega_0*[1 - (1/n_Si)*(Delta_N*dn_dN + Delta_T*dn_dT)]
%
% Inputs:  Delta_N          -- free-carrier density [m^-3]     (from eq2)
%          Delta_T          -- temperature change [K]           (from eq3)
%          Delta_omega_pump -- laser detuning omega_p - omega_0 [rad/s]

    c       = 3e8;
    n_Si    = 3.485;
    omega_0 = 2*pi*c / 1553.49e-9;
    dn_dT   =  1.86e-4;
    dn_dN   = -1.73e-27;

    omega_p = omega_0 + Delta_omega_pump;

    delta_omega = omega_p - omega_0*(1 - (1/n_Si)*(Delta_N*dn_dN + Delta_T*dn_dT));
end
