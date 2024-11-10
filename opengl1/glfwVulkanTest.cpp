#include "glfwVulkanTest.h"

#include <GLFW/glfw3.h>
#include <vulkan/vulkan.h>

#include <iostream>
#include <vector>
#include <exception>
#include <memory>

using namespace std;

class VulkanInstance{
public:
    VulkanInstance(){
        VkApplicationInfo appInfo{};
        appInfo.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO;
        appInfo.pApplicationName = "Hello Triangle";
        appInfo.applicationVersion = VK_MAKE_VERSION(1, 0, 0);
        appInfo.pEngineName = "No Engine";
        appInfo.engineVersion = VK_MAKE_VERSION(1, 0, 0);
        appInfo.apiVersion = VK_API_VERSION_1_0;
        
        VkInstanceCreateInfo createInfo{};
        createInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
        createInfo.pApplicationInfo = &appInfo;
        
        uint32_t glfwExtensionCount = 0;
        const char** glfwExtensions;

        glfwExtensions = glfwGetRequiredInstanceExtensions(&glfwExtensionCount);

        createInfo.enabledExtensionCount = glfwExtensionCount;
        createInfo.ppEnabledExtensionNames = glfwExtensions;
        
        createInfo.enabledLayerCount = 0;
        
        const auto result = vkCreateInstance(&createInfo, nullptr, &instance);
        
        if (result != VK_SUCCESS) {
            throw runtime_error("failed to create instance!");
        }
        
        { // Version
            uint32_t version;
            vkEnumerateInstanceVersion(&version);
            cout << "Vulkan version: " 
                  << VK_API_VERSION_MAJOR(version) << "."
                  << VK_API_VERSION_MINOR(version) << "." 
                  << VK_API_VERSION_PATCH(version) << endl;
        }
        
        uint32_t extensionCount = 0;
        vkEnumerateInstanceExtensionProperties(nullptr, &extensionCount, nullptr);
        vector<VkExtensionProperties> extensions(extensionCount);
        vkEnumerateInstanceExtensionProperties(nullptr, &extensionCount, extensions.data());
        
        cout << "available extensions:\n";

        for (const auto& extension : extensions) {
            cout << '\t' << extension.extensionName << '\n';
        }
    }
    
private:
    VkInstance instance;
    
};

class GLFWWindow {
public:
    GLFWWindow(int width, int height) {
        glfwInit();
        
        createWindow(width,height);
        
        createInstance();
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
        instance = make_unique<VulkanInstance>();
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
