function dadt = eq1_modal_amplitude(a, delta_omega, gamma_tot, E_in, E_add, t)
%   da/dt = [i*delta_omega(t) - gamma_tot(t)]*a(t)
%           + i*sqrt(2/tau_c)*[E_in(t) + E_add(t)]*exp(i*omega_p*t)
%
% Inputs:  a           -- modal amplitude
%          delta_omega -- total frequency detuning  (from eq4)
%          gamma_tot   -- total loss rate           (from eq5)
%          E_in        -- input port electric field
%          E_add       -- add port electric field
%          t           -- current time [s]

    tau_c   = 54.7e-12;
    c       = 3e8;
    omega_p = 2*pi*c / 1553.49e-9;

    dadt = (1i*delta_omega - gamma_tot)*a ...
         + 1i*sqrt(2/tau_c)*(E_in + E_add)*exp(1i*omega_p*t);
end
