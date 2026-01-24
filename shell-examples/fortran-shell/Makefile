# Disable the default rules
# Use https://fortran-lang.org/learn/building_programs/project_make/ to setup real project
MAKEFLAGS += --no-builtin-rules --no-builtin-variables


# Configuration settings
FC := gfortran
AR := ar rcs
LD := $(FC)
RM := rm -f

# List of all source files
SRCS := hello.f90 

# Create object files from Fortran source
hello: 
	$(FC) hello.f90 -o hello

# Cleanup, filter to avoid removing source code by accident
clean:
	$(RM) hello
