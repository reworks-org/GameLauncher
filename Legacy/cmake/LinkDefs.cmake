if (MSVC)
	set(LINK_FLAGS
        /ignore:4099
        /MACHINE:X64
        /SUBSYSTEM:WINDOWS
        /ENTRY:mainCRTStartup
	)

	set(LINK_FLAGS_DEBUG
		${LINK_FLAGS}
		/INCREMENTAL
        /DEBUG
	)

	set(LINK_FLAGS_RELEASE
		${LINK_FLAGS}
		/INCREMENTAL:NO
        /OPT:REF
        /OPT:ICF
        /LTCG:incremental
	)
else()
	set(LINK_FLAGS
		-pthread
	)

	set(LINK_FLAGS_DEBUG
		${LINK_FLAGS}
	)

	set(LINK_FLAGS_RELEASE
		${LINK_FLAGS}
	)
endif()