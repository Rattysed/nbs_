LIBRARY()

SRCS(
    yql_configuration_transformer.cpp
    yql_dispatch.cpp
    yql_setting.h
)

PEERDIR(
    contrib/ydb/library/yql/core
    contrib/ydb/library/yql/core/expr_nodes
    contrib/ydb/library/yql/ast
    library/cpp/containers/sorted_vector
    library/cpp/string_utils/parse_size
    library/cpp/string_utils/levenshtein_diff
)


   YQL_LAST_ABI_VERSION()


END()
