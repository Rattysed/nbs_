#pragma once

#include "command.h"

namespace NCloud::NBlockStore::NClient {

////////////////////////////////////////////////////////////////////////////////

TCommandPtr NewPingCommand(IBlockStorePtr client);

}   // namespace NCloud::NBlockStore::NClient
