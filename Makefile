# contrib/reservoir_sampling/Makefile

MODULE_big = res_spi_tpch
OBJS = res_spi_tpch.o $(WIN32RES)
EXTENSION = res_spi_tpch
DATA = res_spi_tpch--1.0.sql
PGFILEDESC = "res_spi_tpch - binary search for integer arrays"
PG_CFLAGS += -ggdb -O0

REGRESS = res_spi_tpch

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/res_spi_tpch
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
