function [LapCnt, TrajCnt, ValidPointCount, TrackingMode, s_m, x_m, y_m, psi_rad, kappa_radpm, v_mps, ax_mps2] = decode_trajectory(network_package)
%#codegen

% number of data points which are header information plus 1
header_offset = 4; 
nTrajElements = 1000; 

% read out package header  
LapCnt = uint32(network_package(1)); 
TrajCnt = uint32(network_package(2));
ValidPointCount = uint32(nTrajElements); 
TrackingMode = uint32(network_package(3)); 

% read out trajectory 
s_m = network_package(header_offset:(nTrajElements+header_offset-1));
x_m = network_package((nTrajElements+header_offset):(2*nTrajElements+header_offset-1));
y_m = network_package((2*nTrajElements+header_offset):(3*nTrajElements+header_offset-1));
psi_rad = network_package((3*nTrajElements+header_offset):(4*nTrajElements+header_offset-1));
kappa_radpm = network_package((4*nTrajElements+header_offset):(5*nTrajElements+header_offset-1));
v_mps = network_package((5*nTrajElements+header_offset):(6*nTrajElements+header_offset-1));
ax_mps2 = network_package((6*nTrajElements+header_offset):(7*nTrajElements+header_offset-1));

end
