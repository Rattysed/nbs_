LIBRARY()

SRCS(
    kqp_compute.cpp
    kqp_effects.cpp
    kqp_output_stream.cpp
    kqp_program_builder.cpp
    kqp_read_actor.cpp
    kqp_read_table.cpp
    kqp_runtime_impl.h
    kqp_scan_data.cpp
    kqp_sequencer_actor.cpp
    kqp_sequencer_factory.cpp
    kqp_scan_data_meta.cpp
    kqp_stream_lookup_actor.cpp
    kqp_stream_lookup_actor.h
    kqp_stream_lookup_factory.cpp
    kqp_stream_lookup_factory.h
    kqp_stream_lookup_worker.cpp
    kqp_stream_lookup_worker.h
    kqp_tasks_runner.cpp
    kqp_transport.cpp
)

PEERDIR(
    contrib/libs/apache/arrow
    contrib/ydb/core/actorlib_impl
    contrib/ydb/core/base
    contrib/ydb/core/engine
    contrib/ydb/core/engine/minikql
    contrib/ydb/core/formats
    contrib/ydb/core/kqp/common
    contrib/ydb/core/protos
    contrib/ydb/core/scheme
    contrib/ydb/core/ydb_convert
    contrib/ydb/library/yql/minikql/comp_nodes/llvm
    contrib/ydb/library/yql/utils
    contrib/ydb/library/yql/dq/actors/protos
    contrib/ydb/library/yql/dq/actors/spilling
    contrib/ydb/library/yql/dq/common
    contrib/ydb/library/yql/dq/runtime
    library/cpp/threading/hot_swap
)

YQL_LAST_ABI_VERSION()

END()

RECURSE_FOR_TESTS(
    ut
)