project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	systemversion "latest"
	staticruntime "On"

	targetdir (vartargetdir .. "/%{prj.name}")
	objdir (varobjdir .. "/%{prj.name}")

	files {
		"src/**.h",
		"src/**.cpp",
		
		"include/**.h"
	}

	includedirs {
		"include"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"