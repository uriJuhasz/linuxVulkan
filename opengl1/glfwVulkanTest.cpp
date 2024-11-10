#include "glfwVulkanTest.h"

#include <GLFW/glfw3.h>

#include <iostream>
#include <vector>
#include <exception>
#include <memory>

#include "VulkanInstance.h"

using namespace std;

class GLFWWindow {
public:
    GLFWWindow(int width, int height) {
        cout << "VulkanTest.GLFW.init" << endl;
        glfwInit();
        
        cout << "VulkanTest.GLFW.createWindow" << endl;
        createWindow(width,height);
        
        cout << "VulkanTest.Vulkan.createInstance" << endl;
        createInstance();

        cout << "VulkanTest.ready" << endl;
    }
    
    ~GLFWWindow(){
        instance.reset();
        destroyWindow();
        glfwTerminate();        
    }
    
private:
    void createWindow(int width, int height) {
        glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
        glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

        window = glfwCreateWindow(width, height, "Vulkan", nullptr, nullptr);
    }
    
    void destroyWindow() {
        glfwDestroyWindow(window);
    }

    GLFWwindow* window;

    
private:
    void createInstance() {
        instance = makeVulkanInstance();
    }
    
    unique_ptr<VulkanInstance> instance;
};



void glfwVulkanTest() {
    try {
        cout << "VulkanTest.start" << endl;
        const auto window = new GLFWWindow(1024, 768);
        if (window){
            cout << "Created window" << endl;
        }
    }catch(const exception& error){
        cerr << "Error in Vulkan test: " << error.what() << endl;
    }
    
    cout << "VulkanTest.end" << endl;
}
