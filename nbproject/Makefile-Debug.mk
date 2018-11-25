#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/AppDragonWarrior.o \
	${OBJECTDIR}/src/CtxOverworld.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=`sdl2-config --cflags` -fexceptions 
CXXFLAGS=`sdl2-config --cflags` -fexceptions 

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../../Libs/dakiilib/dist/Debug/GNU-Linux -L/usr/lib64 -ldakiilib -lSDL2_image -lSDL2_mixer

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dragonwarrior

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dragonwarrior: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dragonwarrior ${OBJECTFILES} ${LDLIBSOPTIONS} `sdl2-config --libs`

${OBJECTDIR}/src/AppDragonWarrior.o: src/AppDragonWarrior.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_DEBUG -D_LINUX -Isrc -I../../Libs/dakiilib/src/dfc -I../../Libs/dakiilib/src/helper -I../../Libs/dakiilib/src/lib -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/AppDragonWarrior.o src/AppDragonWarrior.cpp

${OBJECTDIR}/src/CtxOverworld.o: src/CtxOverworld.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_DEBUG -D_LINUX -Isrc -I../../Libs/dakiilib/src/dfc -I../../Libs/dakiilib/src/helper -I../../Libs/dakiilib/src/lib -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/CtxOverworld.o src/CtxOverworld.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc