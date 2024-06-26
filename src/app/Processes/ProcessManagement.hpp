#ifndef PROCESSMANAGEMENT_HPP
#define PROCESSMANAGEMENT_HPP

#include "Task.hpp"
#include <queue>
#include <memory>

class ProcessManagement{
    
    public:
        ProcessManagement();
        bool submitToQueue(std::unique_ptr<Task> task);
        void executeTasks();
    private:
        std::queue<std::unique_ptr<Task>> taskQueue;

};

#endif