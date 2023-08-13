---
title: "Creating a ToDo List App with JavaScript"
date: 2022-08-22T10:00:00
draft: false
description: "Learn how to create a simple ToDo List app using JavaScript"
categories:
- "Programming"
tags:
- "JavaScript"
- "Web Development"
- "ToDo List"
type: "featured"
---

# Creating a ToDo List App with JavaScript

In this tutorial, we will learn how to create a simple ToDo List app using JavaScript. With this app, you will be able to add new tasks, mark tasks as completed, and delete tasks.

## Prerequisites

To follow along, you should have a basic understanding of HTML, CSS, and JavaScript.

## Getting Started

First, let's start by creating the basic structure of our app in HTML.

```html
<!DOCTYPE html>
<html>
<head>
  <title>ToDo List</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
  <h1>ToDo List</h1>

  <div id="task-container">
    <input type="text" placeholder="Enter task" id="task-input">
    <button id="add-task-btn">Add</button>
  </div>

  <ul id="task-list">
  </ul>

  <script src="script.js"></script>
</body>
</html>
```

In the above HTML code, we have a container div for adding new tasks, an unordered list for displaying the tasks, and a script tag to include our JavaScript code.

Next, let's style our app using CSS.

```css
/* styles.css */

* {
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  margin: 0;
  padding: 20px;
}

h1 {
  text-align: center;
}

#task-container {
  display: flex;
  margin-bottom: 20px;
}

#task-input {
  flex-grow: 1;
  padding: 10px;
  font-size: 16px;
}

#add-task-btn {
  padding: 10px;
  font-size: 16px;
  background-color: #4caf50;
  color: white;
  border: none;
  cursor: pointer;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  margin-bottom: 10px;
}

.completed {
  text-decoration: line-through;
  color: #808080;
}
```

In the CSS code above, we have defined the basic styling for our app, including fonts, colors, and layout.

Now, let's implement the functionality using JavaScript.

```javascript
// script.js

const taskInput = document.getElementById('task-input');
const addTaskBtn = document.getElementById('add-task-btn');
const taskList = document.getElementById('task-list');

addTaskBtn.addEventListener('click', addTask);

function addTask() {
  const taskText = taskInput.value.trim();

  if (taskText !== '') {
    const taskItem = document.createElement('li');
    const taskTextSpan = document.createElement('span');
    const deleteBtn = document.createElement('button');

    taskTextSpan.textContent = taskText;
    deleteBtn.textContent = 'Delete';

    taskItem.appendChild(taskTextSpan);
    taskItem.appendChild(deleteBtn);
  
    taskList.appendChild(taskItem);
  
    deleteBtn.addEventListener('click', deleteTask);
    taskItem.addEventListener('click', toggleTask);

    taskInput.value = '';
  }
}

function deleteTask(event) {
  event.stopPropagation();

  const taskItem = event.target.parentElement;
  taskList.removeChild(taskItem);
}

function toggleTask(event) {
  const taskItem = event.target;
  
  taskItem.classList.toggle('completed');
}

```

In the JavaScript code above, we have defined functions for adding tasks, deleting tasks, and toggling task completion. The `addTask` function creates a new task item element, adds event listeners for the delete button and task item, and appends the task item to the task list. The `deleteTask` function removes the task item from the task list. The `toggleTask` function toggles the completed class on the task item, visually marking it as completed.

## Conclusion

Congratulations! You have created a simple ToDo List app using JavaScript. You can now add new tasks, mark tasks as completed, and delete tasks. Feel free to customize the app further or add more features.

In this tutorial, we have covered the basics of creating a JavaScript app, including HTML structure, CSS styling, and JavaScript functionality. Make sure to practice and explore more to enhance your skills in web development.

Happy coding!
