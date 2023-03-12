#ifndef MUDUO_BASE_TIMESTAMP_H
#define MUDUO_BASE_TIMESTAMP_H

#include "muduo/base/Types.h"
#include "muduo/base/copyable.h"

#include <boost/operators.hpp>

namespace muduo
{

class Timestamp : public muduo::copyable,
                  public boost::equality_comparable<Timestamp>,
                  public boost::less_than_comparable<Timestamp>
{
public:
    Timestamp() : microSecondsSinceEpoch_(0) {}
    
    explicit Timestamp(int64_t microSecondsSinceEpoch) : microSecondsSinceEpoch_(microSecondsSinceEpoch) {}
    
    void swap(Timestamp& that)
    {
        std::swap(microSecondsSinceEpoch_, that.microSecondsSinceEpoch_);
    }

    std::string toString() const;
    std::string toFormattedString(bool showMicroSeconds) const;

    bool valid() const
    {
        return microSecondsSinceEpoch_ > 0;
    }

    int64_t microSecondsSinceEpoch() const
    {
        return microSecondsSinceEpoch_;
    }

    // get time of now
    static Timestamp now();

    static Timestamp invalid()
    {
        return Timestamp();
    }

    static const int kMicroSecondsPerSecond = 1000000; // 1s = 100000μs

private:
    int64_t microSecondsSinceEpoch_;
};

bool operator<(Timestamp lts, Timestamp rts)
{
    return lts.microSecondsSinceEpoch() < rts.microSecondsSinceEpoch();
}

bool operator==(Timestamp lts, Timestamp rts)
{
    return lts.microSecondsSinceEpoch() == rts.microSecondsSinceEpoch();
}

// the difference between hight and low, uint: seoncd
double timeDifference(Timestamp high, Timestamp low)
{
    int64_t diff = high.microSecondsSinceEpoch() - low.microSecondsSinceEpoch();
    return static_cast<double>(diff) / Timestamp::kMicroSecondsPerSecond;
}

Timestamp addTime(Timestamp ts, double seconds)
{
    return Timestamp(ts.microSecondsSinceEpoch() + static_cast<int64_t>(seconds * Timestamp::kMicroSecondsPerSecond));
}

}; // end of namspace muduo

#endif // !MUDUO_BASE_TIMESTAMP_H
