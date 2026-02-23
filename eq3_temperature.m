function dDelta_T_dt = eq3_temperature(Delta_T, a, P_abs)
%   d(Delta_T)/dt = -Delta_T/tau_th
%                  + (Gamma_th*P_abs(t)) / (m*c_p) * |a(t)|^2
%
% Inputs:  Delta_T -- temperature difference from environment [K]
%          a       -- modal amplitude
%          P_abs   -- absorbed power bracket term (from eq6)

    tau_th   = 50e-9;
    Gamma_th = 0.9355;
    m        = 1.2e-11;
    c_p      = 700;

    dDelta_T_dt = -Delta_T/tau_th + (Gamma_th*P_abs/(m*c_p))*abs(a)^2;
end
