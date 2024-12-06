PREFIX		= /usr/local
LIBDIR		= $(PREFIX)/lib
MANDIR		= $(PREFIX)/share/man
INCLUDEDIR	= $(PREFIX)/include

TARGET		= libasm.a
TARGETDIR	= lib
SRCDIR		= src
BUILDDIR	= build
SRC_FILES	= $(wildcard $(SRCDIR)/*.s)
OBJFILES	= $(patsubst $(SRCDIR)/%.s,$(BUILDDIR)/%.o,$(SRC_FILES))

AS		= as
ASFLAGS		=
AR		= ar

all: $(TARGET)

$(TARGET): $(OBJFILES)
	$(AR) rcs $(TARGETDIR)/$(TARGET) $(OBJFILES)

$(BUILDDIR)/%.o: $(SRCDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

clean:
	rm -f $(TARGETDIR)/$(TARGET) $(OBJFILES)

install: $(TARGET)
	cp $(TARGETDIR)/$(TARGET) $(LIBDIR)/$(TARGET)

uninstall:
	rm -f $(LIBDIR)/$(TARGET)
