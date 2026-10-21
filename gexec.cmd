# project name
name VTFET
# execution graph
job 2   -post { extract_vars "$nodedir" n2_des.out 2 }  -o n2_des "sdevice pp2_des.cmd"
job 1   -post { extract_vars "$nodedir" n1_dvs.out 1 }  -o n1_dvs "sde -l n1_dvs.cmd"
check sde_dvs.cmd 1792577071
check sdevice_des.cmd 1792580335
check sdevice.par 1792580486
check global_tooldb 1643313649
check gtree.dat 1792577571
check ./Germanium.par 1640151510
check ./HfO2.par 1640151510
check ./Metal.par 1659731902
check ./Silicon.par 1640151510
# included files
file sdevice.par included ./Germanium.par
file sdevice.par included ./HfO2.par
file sdevice.par included ./Metal.par
file sdevice.par included ./Silicon.par
