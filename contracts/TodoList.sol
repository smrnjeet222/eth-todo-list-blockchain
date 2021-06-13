// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  constructor() {
    createTask('Example Task Intialized');
  }

  mapping(uint => Task) public tasks;

  function createTask(string memory _content) public {
    tasks[taskCount] = Task(taskCount, _content, false);
    taskCount++;
  }
}