project "PhysX"	
	kind "staticlib"
	warnings "off"

	includedirs
	{
		"src/common/include",
		"src/common/src",
		"src/fastxml/include",
		"src/fastxml/src",
		"src/physx/src",
		"src/filebuf/src",
		"src/filebuf/include",
		"src/physx/src/device",
		"src/physx/src/buffering",
		"src/physxgpu/include",
		"src/geomutils/include",
		"src/geomutils/src",
		"src/geomutils/src/contact",
		"src/geomutils/src/common",
		"src/geomutils/src/convex",
		"src/geomutils/src/distance",
		"src/geomutils/src/sweep",
		"src/geomutils/src/gjk",
		"src/geomutils/src/intersection",
		"src/geomutils/src/mesh",
		"src/geomutils/src/hf",
		"src/geomutils/src/pcm",
		"src/geomutils/src/ccd",
		"src/lowlevel/api/include",
		"src/lowlevel/software/include",
		"src/lowlevel/common/include/pipeline",
		"src/lowlevel/api/include",
		"src/lowlevel/common/include",
		"src/lowlevel/common/include/collision",
		"src/lowlevel/common/include/utils",
		"src/lowlevel/software/include",
		"src/lowleveldynamics/include",
		"src/lowlevelaabb/include",
		"src/lowleveldynamics/include",
		"src/simulationcontroller/include",
		"src/simulationcontroller/src",
		"src/physxcooking/src",
		"src/physxvehicle/src/physxmetadata/include",
		"src/physxvehicle/src",
		"src/physxcooking/src/mesh",
		"src/physxcooking/src/convex",
		"src/scenequery/include",
		"src/physxextensions/src",
		"src/physxextensions/src/serialization/binary",
		"src/physxextensions/src/serialization/file",
		"src/physxextensions/src/serialization/xml",
		"src/physxextensions/src/serialization",
		"src/physxmetadata/core/include",
		"src/physxmetadata/extensions/include",
		"src/immediatemode/include",
		"src/pvd/include",
		"src/foundation/include",
		"src/physxmetadata/include",
		"include/",
		"include/foundation/"
	} 
	
	files 
	{
		"**.cpp",
		"**.h"
	}

	defines 
	{
		"PX_PHYSX_STATIC_LIB",
		"PX_PHYSX_FOUNDATION_EXPORTS",
		"PX_PHYSX_CORE_EXPORTS",
		"PX_NVTX=0",
		"PX_SUPPORT_PVD=1",
		"PhysX_EXPORTS",
		"PX_COOKING"
	}

	filter "configurations:Debug"
		defines { "PX_DEBUG=1", "PX_CHECKED", "_DEBUG" }
	
	filter "configurations:Release"
		defines { "PX_DEBUG=0", "NDEBUG" }
	
	filter "configurations:Final"
		defines { "PX_DEBUG=0", "NDEBUG" }