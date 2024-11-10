#include <GLFW/glfw3.h>
#include <iostream>

#include "glfwOpenGLTest.h"

using namespace std;

void glfwOpenGLTest() {
    try {
    cout << "OpenGLTest.start" << endl;

    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit()){
        cerr << "Error initialising glfw" << endl;
        return;
    }

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(1024, 768, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        cerr << "Error creating glfw window" << endl;
        return ;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);
    
    const auto versionString = glGetString(GL_VERSION);
    cout << "OpenGL version: " << versionString << endl;
/*
    //Loop until the user closes the window
    while (!glfwWindowShouldClose(window))
    {
        // Render here 
        glClear(GL_COLOR_BUFFER_BIT);
          
        // Swap front and back buffers 
        glfwSwapBuffers(window);

        // Poll for and process events 
        glfwPollEvents();
    }
*/
    }catch(const exception& err){
            cerr << "Error: " << err.what() << endl;
    }
    
    glfwTerminate();
    cout << "OpenGLTest.end" << endl;
    
    return;
}
