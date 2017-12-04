#!/bin/bash
source ../env.gpufusion.sh

~/cmake/cmake-3.7.0-rc1-Linux-x86_64/bin/cmake -DTHRUST_INCLUDE_DIR=$CUDA_PATH/include \
    -DNETCDF_DIR=$NETCDF \
    -DNETCDF_CXX_ROOT=$NETCDFCXX4 \
    -DLIBCONFIGPP_LIBRARY=$LIBCONFIGDIR/$LIBCONFIGLIB \
    -DUSE_CUDA=1 \
    -DUSEMPI=0 \
    -DUSE_BOOST=1 \
    -DUSEIONIZATION=1 \
    -DUSERECOMBINATION=0 \
    -DUSEPERPDIFFUSION=1 \
    -DUSECOULOMBCOLLISIONS=1 \
    -DUSETHERMALFORCE=1 \
    -DUSESURFACEMODEL=1 \
    -DUSESHEATHEFIELD=1 \
    -DBIASED_SURFACE=1 \
    -DUSEPRESHEATHEFIELD=1 \
    -DBFIELD_INTERP=0 \
    -DLC_INTERP=3 \
    -DGENERATE_LC=0 \
    -DEFIELD_INTERP=0 \
    -DPRESHEATH_INTERP=3 \
    -DDENSITY_INTERP=2 \
    -DTEMP_INTERP=2 \
    -DFLOWV_INTERP=3 \
    -DGRADT_INTERP=2 \
    -DODEINT=0 \
    -DFIXEDSEEDS=0 \
    -DPARTICLESEEDS=0 \
    -DGEOM_TRACE=0 \
    -DGEOM_HASH=3 \
    -DGEOM_HASH_SHEATH=3 \
    -DPARTICLE_TRACKS=0 \
    -DPARTICLE_SOURCE=2 \
    -DSPECTROSCOPY=3 \
    -DUSE3DTETGEOM=1 \
    -DUSECYLSYMM=1 \
    -DCHECK_COMPATIBILITY=1 \
    ..