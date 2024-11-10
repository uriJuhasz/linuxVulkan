#ifndef VULKAN_INSTANCE
#define VULKAN_INSTANCE

#include <memory>

class VulkanInstance {
protected:
    VulkanInstance();
public:
    virtual ~VulkanInstance();
};

std::unique_ptr<VulkanInstance> makeVulkanInstance();

#endif
