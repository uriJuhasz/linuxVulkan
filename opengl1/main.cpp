#include <iostream>

#include "glfwOpenGLTest.h"
#include "glfwVulkanTest.h"

using namespace std;

int main() {
    cout << "Start" << endl;
    glfwOpenGLTest();
    glfwVulkanTest();
    cout << "End" << endl;
    return 0;
}