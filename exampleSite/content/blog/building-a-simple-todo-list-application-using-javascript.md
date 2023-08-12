--- 
title: "Building a Simple TODO List Application using JavaScript"
date: 2021-09-20T14:30:00
draft: false
description: "Learn how to create a simple TODO List application using JavaScript"
categories: 
  - "Web Development"
tags: 
  - "JavaScript"
  - "HTML"
  - "CSS"
type: "featured"
---

## Introduction

In this tutorial, we will learn how to build a simple TODO List application using JavaScript. This application will allow users to add tasks, mark tasks as completed, and delete tasks. We will use HTML for the structure, CSS for the styling, and JavaScript for the functionality.

## Prerequisites

To follow this tutorial, you need to have a basic understanding of HTML, CSS, and JavaScript.

## Setup

Create a new directory for your project and navigate to it using your preferred command-line interface. Create three files: `index.html`, `style.css`, and `script.js`.

In `index.html`, add the following code:

```html
<!DOCTYPE html>
<html>
<head>
  <title>TODO List</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <h1>TODO List</h1>

  <div class="add-task">
    <input type="text" id="task-input" placeholder="Enter a task">
    <button id="add-button">Add Task</button>
  </div>

  <ul id="task-list"></ul>

  <script src="script.js"></script>
</body>
</html>
```

In `style.css`, add the following code:

```css
body {
  font-family: Arial, sans-serif;
}

.add-task {
  margin-bottom: 10px;
}

ul {
  list-style-type: none;
  padding: 0;
}

li.completed {
  text-decoration: line-through;
}
```

In `script.js`, add the following code:

```javascript
const addButton = document.getElementById('add-button');
const taskInput = document.getElementById('task-input');
const taskList = document.getElementById('task-list');

addButton.addEventListener('click', addTask);

function addTask() {
  const task = taskInput.value;

  if (task) {
    const listItem = document.createElement('li');
    listItem.innerText = task;

    const deleteButton = document.createElement('button');
    deleteButton.innerText = 'Delete';
    deleteButton.addEventListener('click', () => {
      taskList.removeChild(listItem);
    });

    listItem.appendChild(deleteButton);
    taskList.appendChild(listItem);

    taskInput.value = '';
  }
}
```

## Testing the Application

You can now open `index.html` in your web browser. Enter a task in the input field and click the "Add Task" button. The task should be added to the list below. You can also click the "Delete" button to remove a task.

## Conclusion

In this tutorial, we learned how to build a simple TODO List application using JavaScript. We covered the basic structure of the application using HTML, applied some styling with CSS, and implemented the functionality with JavaScript. You can further enhance this application by adding features like task filtering or persistence using browser storage.

Happy coding!

