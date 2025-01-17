#pragma once

#include <contrib/ydb/core/base/defs.h>
#include <contrib/ydb/core/base/events.h>

#include <util/generic/vector.h>

namespace NKikimr::NReplication::NService {

struct TEvWorker {
    enum EEv {
        EvBegin = EventSpaceBegin(TKikimrEvents::ES_REPLICATION_SERVICE),

        EvHandshake,
        EvPoll,
        EvData,

        EvEnd,
    };

    static_assert(EvEnd < EventSpaceEnd(TKikimrEvents::ES_REPLICATION_SERVICE));

    struct TEvHandshake: public TEventLocal<TEvHandshake, EvHandshake> {};
    struct TEvPoll: public TEventLocal<TEvPoll, EvPoll> {};

    struct TEvData: public TEventLocal<TEvData, EvData> {
        struct TRecord {
            ui64 Offset;
            TString Data;

            explicit TRecord(ui64 offset, const TString& data);
            explicit TRecord(ui64 offset, TString&& data);
        };

        TVector<TRecord> Records;

        explicit TEvData(TVector<TRecord>&& records);
    };
};

IActor* CreateWorker(THolder<IActor>&& reader, THolder<IActor>&& writer);

}
