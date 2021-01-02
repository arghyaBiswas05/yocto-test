#include <string>
#include <iostream>
#include <fstream>
#include <string.h>
#include <json/json.h>
#include <json/value.h>

using namespace std;

Json::Value crend_root;

int main()
{
	printf("its working new\n");

	ifstream crendfile("/usr/share/iAloy/.conf/db_credential.json");
	crendfile >> crend_root;

	string server = crend_root["host"].asString();
	string user_name = crend_root["user"].asString();
	string password = crend_root["password"].asString();
	string database = crend_root["database"].asString();
	string sql_file = crend_root["sql_file"].asString();
	cout << server << endl;
	cout << user_name << endl;
	cout << password << endl;
	cout << database << endl;
	cout << sql_file << endl;

	return 0;
}
