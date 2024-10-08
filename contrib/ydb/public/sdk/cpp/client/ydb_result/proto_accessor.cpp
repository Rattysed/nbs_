#include "result.h"

#include <contrib/ydb/public/sdk/cpp/client/ydb_proto/accessor.h>

namespace NYdb {

const Ydb::ResultSet& TProtoAccessor::GetProto(const TResultSet& resultSet) {
    return resultSet.GetProto();
}

} // namespace NYdb
