function P_abs = eq6_absorbed_power(a, Delta_N)
%   P_abs(t) = [ c*alpha/n_Si
%               + beta_TPA*c^2/(n_Si^2*V_TPA) * |a|^2
%               + Gamma_FCA*sigma_FCA*c/(2*n_Si) * Delta_N ] * |a|^2
%
% Inputs:  a       -- modal amplitude
%          Delta_N -- free-carrier density [m^-3]  (from eq2)
%
% Note: excludes coupling loss (2/tau_c), that term carries light out,
%       not heat. Compare with eq5 which includes it.

    c         = 3e8;
    n_Si      = 3.485;
    beta_TPA  = 8.4e-11;
    V_TPA     = 2.59e-18;
    Gamma_FCA = 0.9996;
    sigma_FCA = 1.0e-21;

    % 0.8 dB/cm converted to [1/m]
    alpha = 0.8 * 100 / (10*log10(exp(1)));

    bracket = (c*alpha / n_Si) ...
            + (beta_TPA*c^2) / (n_Si^2*V_TPA) * abs(a)^2 ...
            + (Gamma_FCA*sigma_FCA*c) / (2*n_Si) * Delta_N;

    P_abs = bracket * abs(a)^2;
end
