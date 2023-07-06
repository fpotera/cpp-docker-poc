#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using namespace std;

int main()
{
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};

    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl << flush;

    ofstream myfile;
    myfile.open ("/tmp/example.txt");
    myfile << "Writing this to a file.\n";
    myfile.close();
}
