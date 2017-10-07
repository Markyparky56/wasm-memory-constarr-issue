#include <stdlib.h>
void *operator new     (size_t size) { return malloc(size); }
void *operator new[]   (size_t size) { return malloc(size); }
void  operator delete  (void   *ptr) noexcept { return free(ptr); }
void  operator delete[](void   *ptr) noexcept { return free(ptr); }

// const float constFloatArr[] =
// {
//   -1.0f, -0.5f, 0.f, 0.5f, 1.f
// };

// A helper class
class ReturnArrayHelper
{
  float *array;
public:
  ReturnArrayHelper()
    : array(nullptr)
  {}
  float *NewArray(int num)
  {
    if(array != nullptr)
    {
      delete[] array;
    }
    array = new float[num];
    return array;
  }
} returnHelper;

extern "C"
{
static int FastFloor(float f) { return (f >= 0 ? static_cast<int>(f) : static_cast<int>(f) - 1); }

float *GetFloatArr(int n)
{
  float *values = returnHelper.NewArray(n);
  for(int i = 0; i < n; i++)
  {
    values[i] = i % n;
  }
  return values;
}
}