# C++ Windowed Executable Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Debug
endif

ifeq ($(CONFIG),Debug)
  BINDIR := build
  LIBDIR := build
  OBJDIR := build/intermediate/Debug
  OUTDIR := build
  CPPFLAGS := -MMD -D "LINUX=1" -D "DEBUG=1" -D "_DEBUG=1" -I "/usr/include" -I "/usr/include/freetype2"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -g -D_DEBUG -ggdb
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -mwindows -L"/usr/X11R6/lib/" -L"../../../../bin" -lfreetype -lpthread -lX11 -lGL -lGLU -lXinerama -lasound
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "DEBUG=1" -D "_DEBUG=1" -I "/usr/include" -I "/usr/include/freetype2"
  TARGET := jucer
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Release)
  BINDIR := build
  LIBDIR := build
  OBJDIR := build/intermediate/Release
  OUTDIR := build
  CPPFLAGS := -MMD -D "LINUX=1" -D "NDEBUG=1" -I "/usr/include" -I "/usr/include/freetype2"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -O2
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -mwindows -s -L"/usr/X11R6/lib/" -L"../../../../bin" -lfreetype -lpthread -lX11 -lGL -lGLU -lXinerama -lasound
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "NDEBUG=1" -I "/usr/include" -I "/usr/include/freetype2"
  TARGET := jucer
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/BinaryData.o \
	$(OBJDIR)/jucer_Main.o \
	$(OBJDIR)/juce_LibrarySource.o \
	$(OBJDIR)/jucer_ComponentLayoutEditor.o \
	$(OBJDIR)/jucer_ComponentLayoutPanel.o \
	$(OBJDIR)/jucer_ComponentOverlayComponent.o \
	$(OBJDIR)/jucer_EditingPanelBase.o \
	$(OBJDIR)/jucer_JucerDocumentHolder.o \
	$(OBJDIR)/jucer_MainWindow.o \
	$(OBJDIR)/jucer_PaintRoutineEditor.o \
	$(OBJDIR)/jucer_PaintRoutinePanel.o \
	$(OBJDIR)/jucer_PrefsPanel.o \
	$(OBJDIR)/jucer_ResourceEditorPanel.o \
	$(OBJDIR)/jucer_SnapGridPainter.o \
	$(OBJDIR)/jucer_TestComponent.o \
	$(OBJDIR)/jucer_StoredSettings.o \
	$(OBJDIR)/jucer_UtilityFunctions.o \
	$(OBJDIR)/jucer_FilePropertyComponent.o \
	$(OBJDIR)/jucer_FontPropertyComponent.o \
	$(OBJDIR)/jucer_BinaryResources.o \
	$(OBJDIR)/jucer_ComponentLayout.o \
	$(OBJDIR)/jucer_GeneratedCode.o \
	$(OBJDIR)/jucer_JucerDocument.o \
	$(OBJDIR)/jucer_ObjectTypes.o \
	$(OBJDIR)/jucer_PaintRoutine.o \
	$(OBJDIR)/jucer_ComponentTypeHandler.o \
	$(OBJDIR)/jucer_ButtonDocument.o \
	$(OBJDIR)/jucer_ComponentDocument.o \
	$(OBJDIR)/jucer_ColouredElement.o \
	$(OBJDIR)/jucer_FillType.o \
	$(OBJDIR)/jucer_PaintElement.o \
	$(OBJDIR)/jucer_PaintElementPath.o \
	$(OBJDIR)/jucer_StrokeType.o \

MKDIR_TYPE := msdos
CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  MKDIR_TYPE := posix
endif
ifeq (/bin/sh.exe,$(SHELL))
  MKDIR_TYPE := posix
endif
ifeq ($(MKDIR_TYPE),posix)
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking Jucer
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning Jucer
ifeq ($(MKDIR_TYPE),posix)
	-@rm -rf $(OUTDIR)/$(TARGET) $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/BinaryData.o: ../../src/BinaryData.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_Main.o: ../../src/jucer_Main.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/juce_LibrarySource.o: ../../src/juce_LibrarySource.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ComponentLayoutEditor.o: ../../src/ui/jucer_ComponentLayoutEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ComponentLayoutPanel.o: ../../src/ui/jucer_ComponentLayoutPanel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ComponentOverlayComponent.o: ../../src/ui/jucer_ComponentOverlayComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_EditingPanelBase.o: ../../src/ui/jucer_EditingPanelBase.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_JucerDocumentHolder.o: ../../src/ui/jucer_JucerDocumentHolder.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_MainWindow.o: ../../src/ui/jucer_MainWindow.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_PaintRoutineEditor.o: ../../src/ui/jucer_PaintRoutineEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_PaintRoutinePanel.o: ../../src/ui/jucer_PaintRoutinePanel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_PrefsPanel.o: ../../src/ui/jucer_PrefsPanel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ResourceEditorPanel.o: ../../src/ui/jucer_ResourceEditorPanel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_SnapGridPainter.o: ../../src/ui/jucer_SnapGridPainter.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_TestComponent.o: ../../src/ui/jucer_TestComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_StoredSettings.o: ../../src/utility/jucer_StoredSettings.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_UtilityFunctions.o: ../../src/utility/jucer_UtilityFunctions.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_FilePropertyComponent.o: ../../src/properties/jucer_FilePropertyComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_FontPropertyComponent.o: ../../src/properties/jucer_FontPropertyComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_BinaryResources.o: ../../src/model/jucer_BinaryResources.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ComponentLayout.o: ../../src/model/jucer_ComponentLayout.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_GeneratedCode.o: ../../src/model/jucer_GeneratedCode.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_JucerDocument.o: ../../src/model/jucer_JucerDocument.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ObjectTypes.o: ../../src/model/jucer_ObjectTypes.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_PaintRoutine.o: ../../src/model/jucer_PaintRoutine.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ComponentTypeHandler.o: ../../src/model/components/jucer_ComponentTypeHandler.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ButtonDocument.o: ../../src/model/documents/jucer_ButtonDocument.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ComponentDocument.o: ../../src/model/documents/jucer_ComponentDocument.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_ColouredElement.o: ../../src/model/paintelements/jucer_ColouredElement.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_FillType.o: ../../src/model/paintelements/jucer_FillType.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_PaintElement.o: ../../src/model/paintelements/jucer_PaintElement.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_PaintElementPath.o: ../../src/model/paintelements/jucer_PaintElementPath.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/jucer_StrokeType.o: ../../src/model/paintelements/jucer_StrokeType.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

-include $(OBJECTS:%.o=%.d)

