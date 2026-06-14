project "box2d"
	kind "StaticLib"
	language "C"
  	cdialect "C17"
	staticruntime "off" 
  	systemversion "latest"

	targetdir ("bin/box2d/builds/%{cfg.system}_%{cfg.buildcfg}")
	objdir ("bin/box2d/intermediates/%{cfg.system}")

	includedirs
  	{
      "include"
  	}

	files
	{
	    "include/**.h",
	    "src/**.h",
      	"src/**.c"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		optimize "off"

	filter "configurations:Release"
		runtime "Release"
		symbols "off"
		optimize "on"
