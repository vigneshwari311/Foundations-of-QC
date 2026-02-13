OPENQASM 2.0;
include "qelib1.inc";
gate xx_minus_yy(param0,param1) q0,q1 { rz(-param1) q1; sdg q0; sx q0; s q0; s q1; cx q0,q1; ry(0.5*param0) q0; ry((-0.5)*param0) q1; cx q0,q1; sdg q1; sdg q0; sxdg q0; s q0; rz(param1) q1; }
qreg q[2];
creg c[2];
xx_minus_yy(5.754162182502074,3.9121104505873716) q[0],q[1];
u(5.41931820779785,2.914962746436102,3.92475414788579) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
