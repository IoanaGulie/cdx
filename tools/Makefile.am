##
# \file Makefile.am
#
# \date Oct 22, 2015
# \author Frank M. Schubert
#
# \brief Automake configuration file for the CDX tools
#

AM_CXXFLAGS = -std=c++11 -O3 -fopenmp -Wall -DARMA_NO_DEBUG

AM_CPPFLAGS = $(BOOST_CPPFLAGS)
AM_LDFLAGS = $(BOOST_LDFLAGS)
LIBS += $(BOOST_PROGRAM_OPTIONS_LIB)

AUTOMAKE_OPTIONS = subdir-objects

# the program to build (the names of the final binaries)
bin_PROGRAMS = cdx-convert-continuous-to-discrete

# list of source files:
cdx_convert_continuous_to_discrete_SOURCES = cdx-convert-continuous-to-discrete-src/cdx-convert-continuous-to-discrete.cpp

# These tools are now distributed in CDX's Python whl package:
# Install the python scripts in $(bindir) and distribute it:
#dist_bin_SCRIPTS = python/cdx-compute-delay-doppler-spectrum \
#	python/cdx-compute-multipath-spread-and-energy \
#	python/cdx-compute-power-delay-profile \
#	python/cdx-display \
#	python/cdx-plot-discrete-delay-file \
#	python/cdx-compute-multipath-to-line-of-sight-components-power-ratio \
#	python/cdx-plot-cir-continuous-delay-file

