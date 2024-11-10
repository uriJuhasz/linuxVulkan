##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=opengl1
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=/home/rootroot/Documents/ws1
ProjectPath            :=/home/rootroot/Documents/ws1/opengl1
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/opengl1
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=UJ
Date                   :=10/11/24
CodeLitePath           :=/home/rootroot/.codelite
MakeDirCommand         :=mkdir -p
LinkerName             :=/bin/clang++
SharedObjectLinkerName :=/bin/clang++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=/home/rootroot/Documents/ws1/build-$(WorkspaceConfiguration)/bin
OutputFile             :=../build-$(WorkspaceConfiguration)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  -O0
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)glfw $(LibrarySwitch)GL $(LibrarySwitch)vulkan 
ArLibs                 :=  "glfw" "GL" "vulkan" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)Debug 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := /bin/ar rcu
CXX      := /bin/clang++
CC       := /bin/clang
CXXFLAGS :=  -g -Wall -pedantic -std=c++23 -Wextra $(Preprocessors)
CFLAGS   :=   $(Preprocessors)
ASFLAGS  := 
AS       := /bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/VulkanInstance.cpp$(ObjectSuffix) $(IntermediateDirectory)/glfwOpenGLTest.cpp$(ObjectSuffix) $(IntermediateDirectory)/glfwVulkanTest.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@$(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/VulkanInstance.cpp$(ObjectSuffix): VulkanInstance.cpp $(IntermediateDirectory)/VulkanInstance.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rootroot/Documents/ws1/opengl1/VulkanInstance.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/VulkanInstance.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/VulkanInstance.cpp$(DependSuffix): VulkanInstance.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/VulkanInstance.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/VulkanInstance.cpp$(DependSuffix) -MM VulkanInstance.cpp

$(IntermediateDirectory)/VulkanInstance.cpp$(PreprocessSuffix): VulkanInstance.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/VulkanInstance.cpp$(PreprocessSuffix) VulkanInstance.cpp

$(IntermediateDirectory)/glfwOpenGLTest.cpp$(ObjectSuffix): glfwOpenGLTest.cpp $(IntermediateDirectory)/glfwOpenGLTest.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rootroot/Documents/ws1/opengl1/glfwOpenGLTest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/glfwOpenGLTest.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/glfwOpenGLTest.cpp$(DependSuffix): glfwOpenGLTest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/glfwOpenGLTest.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/glfwOpenGLTest.cpp$(DependSuffix) -MM glfwOpenGLTest.cpp

$(IntermediateDirectory)/glfwOpenGLTest.cpp$(PreprocessSuffix): glfwOpenGLTest.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/glfwOpenGLTest.cpp$(PreprocessSuffix) glfwOpenGLTest.cpp

$(IntermediateDirectory)/glfwVulkanTest.cpp$(ObjectSuffix): glfwVulkanTest.cpp $(IntermediateDirectory)/glfwVulkanTest.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rootroot/Documents/ws1/opengl1/glfwVulkanTest.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/glfwVulkanTest.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/glfwVulkanTest.cpp$(DependSuffix): glfwVulkanTest.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/glfwVulkanTest.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/glfwVulkanTest.cpp$(DependSuffix) -MM glfwVulkanTest.cpp

$(IntermediateDirectory)/glfwVulkanTest.cpp$(PreprocessSuffix): glfwVulkanTest.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/glfwVulkanTest.cpp$(PreprocessSuffix) glfwVulkanTest.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rootroot/Documents/ws1/opengl1/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


