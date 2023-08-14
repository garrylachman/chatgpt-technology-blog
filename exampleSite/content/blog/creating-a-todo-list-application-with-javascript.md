---
title: "Creating a Todo List Application with JavaScript"
date: 2022-03-01T09:00:00
draft: false
description: "Learn how to create a simple todo list application using JavaScript. This tutorial will guide you through the step-by-step process with source code examples."
categories:
  - "JavaScript"
tags:
  - "web development"
  - "programming"
  - "todo list"
type: "featured"
---

# Creating a Todo List Application with JavaScript

In this tutorial, we will learn how to create a simple todo list application using JavaScript. The goal is to build an interactive web page where users can add, delete, and mark tasks as completed. Let's get started!

## HTML Structure

First, we need to set up the HTML structure for our todo list application. Open a new HTML file and add the following code:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Todo List</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <div id="app">
      <h1>Todo List</h1>
      <input type="text" id="taskInput" placeholder="Add a new task">
      <button id="addButton">Add</button>
      <ul id="taskList"></ul>
    </div>

    <script src="app.js"></script>
  </body>
</html>
```

Here, we have a simple HTML structure with a title, a CSS file for styling, and a container div with an input field, a button, and an empty task list.

## CSS Styling

Next, let's add some CSS styles to make our todo list look visually appealing. Create a new file called `styles.css` and add the following code:

```css
body {
  font-family: Arial, sans-serif;
}

#app {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

h1 {
  text-align: center;
}

input[type="text"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
}

button {
  padding: 10px;
  background-color: #008080;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  margin-bottom: 5px;
}

.completed {
  text-decoration: line-through;
  color: #ccc;
}
```

This CSS code defines styles for the container, headings, input field, button, and task list. Feel free to customize the styles to your liking.

## JavaScript Functionality

Now, let's add the JavaScript code to make our todo list functional. Create a new file called `app.js` and add the following code:

```javascript
document.addEventListener('DOMContentLoaded', function() {
  var taskInput = document.getElementById('taskInput');
  var addButton = document.getElementById('addButton');
  var taskList = document.getElementById('taskList');

  addButton.addEventListener('click', function() {
    var task = taskInput.value.trim();

    if (task !== '') {
      var li = document.createElement('li');
      var span = document.createElement('span');
      var deleteButton = document.createElement('button');

      span.textContent = task;
      deleteButton.textContent = 'Delete';

      deleteButton.addEventListener('click', function() {
        li.remove();
      });

      li.appendChild(span);
      li.appendChild(deleteButton);
      taskList.appendChild(li);

      taskInput.value = '';
    }
  });

  taskList.addEventListener('click', function(event) {
    var target = event.target;

    if (target.tagName === 'SPAN') {
      target.classList.toggle('completed');
    }
  });
});
```

This JavaScript code adds event listeners to the input field, add button, and task list. When the add button is clicked, it creates a new task item with a delete button. Clicking the delete button removes the task item from the list. Clicking a task item marks it as completed by toggling the `completed` class.

## Testing the Application

To test the todo list application, open the HTML file in a web browser. You should see the input field, add button, and an empty task list. Try adding some tasks by typing in the input field and clicking the add button. You can delete tasks by clicking the delete button or mark them as completed by clicking on the task itself.

Congratulations! You have successfully created a todo list application using JavaScript. Feel free to further customize and enhance the functionality of the application as per your requirements.

Enjoy coding!

