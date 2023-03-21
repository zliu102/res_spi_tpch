# contrib/reservoir_sampling/Makefile

MODULE_big = res_spi
OBJS = res_spi.o $(WIN32RES)
EXTENSION = res_spi
DATA = res_spi--1.0.sql
PGFILEDESC = "res_spi - binary search for integer arrays"
PG_CFLAGS += -ggdb -O0

REGRESS = res_spi

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/res_spi
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
