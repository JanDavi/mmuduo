#ifndef MUDUO_BASE_TYPES_H
#define MUDUO_BASE_TYPES_H

#include <string.h>     // memset

namespace muduo
{

void memZero(void* p, size_t n)
{
    memset(p, 0, n);
}

// a safe version of static_cast and const_cast
template<typename To, typename From>
To implicit_cast(From const &f)
{
    return f;
}

template<typename To, typename From>
To down_cast(From* f)
{
    return static_cast<To>(f);
}

}; // end of namspace muduo

#endif // !MUDUO_BASE_TYPES_H
