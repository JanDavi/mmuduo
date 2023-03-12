#ifndef MUDUO_BASE_COPYABLE_H
#define MUDUO_BASE_COPYABLE_H

namespace muduo
{

/**
 * why protected:
 * 从语法上来讲，一个函数被声明为protected或者private，那么这个函数就不能从“外部”直接被调用了。
 * 对于protected的函数，子类的“内部”的其他函数可以调用之。
*/
class copyable
{
protected:
    copyable() = default;
    ~copyable() = default;
};

}; // end of namspace muduo 

#endif // !MUDUO_BASE_COPYABLE_H