#include <iostream>

#include "glfwOpenGLTest.h"
#include "glfwVulkanTest.h"

using namespace std;

int main() {
    cout << "Start" << endl;
    glfwOpenGLTest();
    glfwVulkanTest();
    cout << "End" << endl;
    char c;
    cin >>  c;
    return 0;
}