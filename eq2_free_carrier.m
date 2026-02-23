function dDelta_N_dt = eq2_free_carrier(Delta_N, a)
%   d(Delta_N)/dt = -Delta_N/tau_FC
%                  + (Gamma_FCA*c^2*beta_TPA) / (2*hbar*omega_p*V_FCA^2*n_Si^2) * |a|^4
%
% Inputs:  Delta_N -- excess free-carrier density [m^-3]
%          a       -- modal amplitude

    tau_FC    = 10e-9;
    Gamma_FCA = 0.9996;
    c         = 3e8;
    beta_TPA  = 8.4e-11;
    hbar      = 1.0546e-34;
    omega_p   = 2*pi*c / 1553.49e-9;
    V_FCA     = 2.36e-18;
    n_Si      = 3.485;

    gen = (Gamma_FCA * c^2 * beta_TPA) / (2*hbar*omega_p*V_FCA^2*n_Si^2);

    dDelta_N_dt = -Delta_N/tau_FC + gen*abs(a)^4;
end
