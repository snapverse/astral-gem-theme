.PHONY: all, install, clean  
   
 TARGET=sum  
   
 HDRS+= sum.h  
 CSRCS+= main.c sum.c  
 CPPSRCS+=  
   
 OBJSDIR=./build  
 OBJS:= $(patsubst %.cpp, $(OBJSDIR)/%.o, $(CPPSRCS))  
 OBJS+= $(patsubst %.c, $(OBJSDIR)/%.o, $(CSRCS)) 