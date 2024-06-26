CXX = g++
CXXFLAGS = -std=c++17 -g -Wall -I, -Isrc/app/encryptDecrypt -Isrc/app/FileHandling -Isrc/app/Processes

MAIN_TARGET = encrypt_decrypt
CRYPTION_TARGET = cryption

MAIN_SRC = main.cpp \
		   src/app/Processes/ProcessManagement.cpp \
		   src/app/FileHandling/ReadEnv.cpp \
		   src/app/FileHandling/IO.cpp \
		   src/app/encryptDecrypt/Cryption.cpp

CRYPTION_SRC = src/app/encryptDecrypt/CryptionMain.cpp \
			   src/app/encryptDecrypt/Cryption.cpp \
			   src/app/FileHandling/ReadEnv.cpp \
			   src/app/FileHandling/IO.cpp

MAIN_OBJ = $(MAIN_SRC:.cpp=.o)
CRYPTION_OBJ = $(CRYPTION_SRC:.cpp=.o)

all: $(MAIN_TARGET) $(CRYPTION_TARGET)

$(MAIN_TARGET): $(MAIN_OBJ)
	$(CXX) $(CXXFLAGS) $^ -o $@

$(CRYPTION_TARGET): $(CRYPTION_OBJ)
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(MAIN_OBJ) $(MAIN_TARGET) $(CRYPTION_OBJ) $(CRYPTION_TARGET)
	
.PHONY: clean all
