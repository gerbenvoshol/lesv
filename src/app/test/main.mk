ifeq "$(strip ${BUILD_DIR})" ""
  BUILD_DIR    := ../$(OSTYPE)-$(MACHINETYPE)/obj
endif
ifeq "$(strip ${TARGET_DIR})" ""
  TARGET_DIR   := ../$(OSTYPE)-$(MACHINETYPE)/bin
endif

TARGET   := qx2test
SOURCES  := main.cpp

SRC_INCDIRS  := .

TGT_LDFLAGS := -L${TARGET_DIR}
TGT_LDLIBS  := -lhbn
TGT_PREREQS := libhbn.a

SUBMAKEFILES :=