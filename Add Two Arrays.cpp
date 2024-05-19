#include <iostream>
using namespace std;

int main()
{
    int n, m;
    cin >> n >> m;

    int arr1[n], arr2[m];
    for (int i = 0; i < n; i++)
    {
        cin >> arr1[i];
    }
    for (int i = 0; i < m; i++)
    {
        cin >> arr2[i];
    }

    int merged[n + m];
    for (int i = 0; i < n; i++)
    {
        merged[i] = arr1[i];
    }
    for (int i = 0; i < m; i++)
    {
        merged[n + i] = arr2[i];
    }

    cout << "Merged array: ";
    for (int i = 0; i < n + m; i++)
    {
        cout << merged[i] << " ";
    }
    cout << endl;

    return 0;
}

