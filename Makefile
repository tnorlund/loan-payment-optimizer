PROGRAM = loan-optimize
PROGRAM_FILES = loan-optimize.c micro-ga.c json.c 
# gcc -o test_json -I.. test_json.c ../json.c -lm

CC 	=  gcc
CFLAGS	+= -g
LDFLAGS	+= 
LIBS 	+= -lm

all: $(PROGRAM)

%: %.c 
	$(CC) $(PROGRAM_FILES) $(CFLAGS) $(LDFLAGS) -o $(PROGRAM) $(LIBS)

clean:
	@rm -rf $(PROGRAM)
