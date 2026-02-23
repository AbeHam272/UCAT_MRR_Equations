function gamma_tot = eq5_total_loss(a, Delta_N)
%   gamma_tot(t) = c*alpha/n_Si  +  2/tau_c
%                + beta_TPA*c^2/(n_Si^2*V_TPA) * |a|^2
%                + Gamma_FCA*sigma_FCA*c/(2*n_Si) * Delta_N
%
% Inputs:  a       -- modal amplitude
%          Delta_N -- free-carrier density [m^-3]  (from eq2)

    c         = 3e8;
    n_Si      = 3.485;
    tau_c     = 54.7e-12;
    beta_TPA  = 8.4e-11;
    V_TPA     = 2.59e-18;
    Gamma_FCA = 0.9996;
    sigma_FCA = 1.0e-21;

    % 0.8 dB/cm converted to [1/m]
    alpha = 0.8 * 100 / (10*log10(exp(1)));

    gamma_linear   = c*alpha / n_Si;
    gamma_coupling = 2 / tau_c;
    gamma_TPA      = (beta_TPA*c^2) / (n_Si^2*V_TPA) * abs(a)^2;
    gamma_FCA      = (Gamma_FCA*sigma_FCA*c) / (2*n_Si) * Delta_N;

    gamma_tot = gamma_linear + gamma_coupling + gamma_TPA + gamma_FCA;
end
