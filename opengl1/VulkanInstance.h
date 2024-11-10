#ifndef VULKAN_INSTANCE
#define VULKAN_INSTANCE

#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

#include <memory>

class VulkanInstance {
protected:
    VulkanInstance();
public:
    virtual ~VulkanInstance();
};

std::unique_ptr<VulkanInstance> makeVulkanInstance(GLFWwindow* window);

#endif
