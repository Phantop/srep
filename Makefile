DEF  = -DFREEARC_UNIX -D_FILE_OFFSET_BITS=64
INCL = -ICommon -IEncryption -IEncryption/headers -IEncryption/hashes
LIB  = -lrt -lpthread
OPTS = -O3 -funroll-all-loops -mtune=skylake -s
WARN = -Wno-write-strings -Wno-unused-result

srep: Common/Common.cpp srep.cpp
	$(CXX) $? $(DEF) $(INCL) $(LIB) $(OPTS) $(WARN) -o$@
