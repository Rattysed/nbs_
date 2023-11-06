LIBRARY()

PEERDIR(
    library/cpp/actors/core
    contrib/ydb/core/base
    contrib/ydb/core/mon
    contrib/ydb/core/protos
    contrib/ydb/core/sys_view/common
    contrib/ydb/core/tx/scheme_cache
    contrib/ydb/core/util
    contrib/ydb/library/aclib
)

SRCS(
    cache.cpp
    helpers.cpp
    load_test.cpp
    monitoring.cpp
    populator.cpp
    replica.cpp
    subscriber.cpp
    two_part_description.cpp
)

GENERATE_ENUM_SERIALIZATION(subscriber.h)

END()

RECURSE_FOR_TESTS(
    ut_cache
    ut_double_indexed
    ut_monitoring
    ut_populator
    ut_replica
    ut_subscriber
)