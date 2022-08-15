#include <iostream>
#include <iostream>
#include <unordered_map>
#include <vector>

class BaseWithNonvirtualDestructor
{
  public:
    void foo()
    {
      std::cout << "do foo\n";
    }

    virtual ~BaseWithNonvirtualDestructor()
    {
      std::cout << "called base destructor\n";
    }
};

class Derived : public BaseWithNonvirtualDestructor {
  public:
    ~Derived() override
    {
      std::cout << "called derived destructor\n";
    }

    void consumeBase(std::unique_ptr<BaseWithNonvirtualDestructor> p)
    {
      p->foo();
      // deletes p when done
    }
};

void getValuesOutParams(const int n, int &out1, int &out2)
{
    // do stuff
    out1 = n;
    out2 = n + 1;
}

struct Values {
    int x, y;
};

Values getValuesReturnStruct(const int n) { return {n, n + 1}; }

void useValues() { auto [x, y] = getValuesReturnStruct(2); }

const std::string &moreFrequent(
    const std::unordered_map<std::string, int> &wordCounts,
    const std::string &word1, const std::string &word2)
{

    // ...
    return wordCounts.at(word1) > wordCounts.at(word2) ? word1 : word2;
}

void anyUseOfReinterpretCast()
{
    long long x = 0;
    auto xp = reinterpret_cast<char *>(x);
    auto x2 = reinterpret_cast<long long>(xp);

    float y = .123f;
    long i = *(long *)&y;
    // ...
    y = *(float *)&i;
}

template <typename T>
void printBytes(const T &input)
{
    auto *bytes = reinterpret_cast<const std::byte *>(&input);

    // print out bytes at a time
}

template <typename T>
void printBytes20(const T &input)
{
    using bytearray = std::array<std::byte, sizeof(T)>;
    const auto &bytes = std::bit_cast<bytearray, T>(input);

    // print out bytes at a time
}
