DLL(yqlplugin 1 0)

INCLUDE(${ARCADIA_ROOT}/yt/opensource.inc)

EXPORTS_SCRIPT(dylib.exports)

SRCS(
    impl.cpp
)

PEERDIR(
    contrib/ydb/library/yql/yt/native
)

END()
