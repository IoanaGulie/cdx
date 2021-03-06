%> \addtogroup matlab_tools
%> @{
%> \addtogroup matlab_tools_plot_discrete_delay_cir_file plot_discrete_delay_cir_file
%> @{
%>
%> \file plot_discrete_delay_cir_file.m
%>
%> \brief This script plots an CDX (HDF5 CIR) file.
%>
%> \date Sep 08, 2010
%> \author Frank M. Schubert

% the most interesting parameters are probably:
% plot_params.length = 1; % length to plot in seconds
% interp_params.skip_step = 1; % only every skip_step-th CIR is plotted

% if waitbars are still open from a previous program interruption, call:
% set(0,'ShowHiddenHandles','on')
% delete(get(0,'Children'))

clear all
close all
clear classes
clc

addpath('../CDX_library_functions');

%% set file parameters:
cdx_file = CDXReadFile('DLRLMS_urban_discrete-delay.h5');
link = 1; % plot the first link in file

%% set plotting parameters:
plot_params.start = 0; % s
plot_params.length = 2; % length to plot in seconds
plot_params.title = '';
plot_params.legend_str = { 'channel impulse responses', 'true delay' };
plot_params.colormap = 'default'; % 'default' or 'gray'
plot_params.dB_range = [-50, 0];
plot_params.reference_delay_color = 'm';
plot_params.reference_delay_linewidth = 3;
plot_params.font_size = 14;
plot_params.save_format = [ 8 6 ];
plot_params.save_fig = false;
plot_params.save_pdf = true;
plot_params.shading = 'interp'; % 'flat', 'faceted', or 'interp'. Legend not supported for 'interp'.

cir_rate = get_cir_rate(cdx_file);
if plot_params.length * cir_rate > 2000
    disp('This will plot more than 2000 CIRs. Are you sure? Press Ctrl-C to abort or any other key to proceed.');
    pause
end

plot_discrete_delay_cir_file(cdx_file, link, plot_params);

%> @}
%> @}
