project "ImGui"
    kind "StaticLib"
    language "C++"
    staticruntime "off"


    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")

    includedirs { 
        ".",
        "../glfw/include",
        "../glew/include"
    }
    
    files { 
        "./*.h",
        "./*.cpp",
        "backends/*_glfw.*",
        "backends/*_opengl3*",
        "Build_ImGui.lua"
    } 