#ifndef MUDUO_BASE_ATOMIC_H
#define MUDUO_BASE_ATOMIC_H

#include "muduo/base/noncopyable.h"
#include <stdint.h> // int32_t, int64_t

namespace muduo
{

namespace detail
{
    
template<typename T>
class AtomicIntegerT : public muduo::noncopyable
{
public:
    AtomicIntegerT() : value_(0) {}
    
    T get()
    {
        return __atomic_load_n(&value_, __ATOMIC_SEQ_CST);
        // return __sync_val_compare_and_swap(&value_, 0, 0);
    }

    // return the value_ before add x
    T getAndAdd(T x)
    {
        return  __atomic_fetch_add(&value_, x, __ATOMIC_SEQ_CST);
        // return __sync_fetch_and_add(&value_, x);
    }

    // return the value_ after add x
    T addAndGet(T x)
    {
        return getAndAdd(x) + x;
    }

    T incrementAndGet()
    {
        return addAndGet(1);
    }

    T decrementAndGet()
    {
        return addAndGet(-1);
    }

    void add(T x)
    {
        getAndAdd(x);
    }

    void increment()
    {
        getAndAdd(1);
    }

    void decrement()
    {
        getAndAdd(-1);
    }

    void getAndSet(T newValue)
    {
        return __atomic_exchange_n(&value_, newValue, __ATOMIC_SEQ_CST);
        // return __sync_lock_test_and_set(&value_, newValue);
    }

private:
    volatile T value_;
}; // end of class AtomicIntegerT

}; // end of namesapce detatil

using AtomicInt32 = detail::AtomicIntegerT<int32_t>;
using AtomicInt64 = detail::AtomicIntegerT<int64_t>;

}; // end of namespace muduo

#endif // !MUDUO_BASE_ATOMIC_H
