project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-tmp/" .. outputdir .. "/%{prj.name}")

	files
	{
		"*.h",
		"*.cpp",
        "Backends/imgui_impl_glfw.cpp",
        "Backends/imgui_impl_glfw.h",
        "Backends/imgui_impl_opengl3.cpp",
        "Backends/imgui_impl_opengl3.h"
	}
	
	includedirs
	{
       "%{IncludeDirs.GLFW}",
		".",
        "Backends"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		
		defines {
		}
