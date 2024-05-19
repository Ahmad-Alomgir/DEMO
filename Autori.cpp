#include <iostream>
#include <string>

using namespace std;

int main()
{
    string longName;
    getline(cin, longName);

    string shortName;
    shortName += longName[0]; // add the first letter to the short name
    for (int i = 1; i < longName.length(); i++)
    {
        if (longName[i] == '-')
        {                                 // if we encounter a hyphen
            shortName += longName[i + 1]; // add the next letter to the short name
        }
    }

    cout << shortName << endl;

    return 0;
}

