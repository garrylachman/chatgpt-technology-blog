--- 
title: "Creating a Simple ToDo App using JavaScript"
date: 2022-08-15T10:00:00
draft: false
description: "Learn how to build a simple ToDo app using JavaScript."
categories:
- "JavaScript"
tags:
- "Web Development"
- "ToDo App"
- "JavaScript"
type: "featured"
---

# Creating a Simple ToDo App using JavaScript

In this tutorial, we will walk through the process of creating a simple ToDo app using JavaScript. By the end of this tutorial, you will have a working app where you can add, delete, and mark tasks as completed.

## Prerequisites

To follow along with this tutorial, you will need the following:

- Basic knowledge of JavaScript
- An HTML file to work with

## Step 1: Setup

To get started, create a new HTML file and add the following code:

```html
<!DOCTYPE html>
<html>
<head>
    <title>ToDo App</title>
</head>
<body>
    <h1>ToDo App</h1>

    <form id="todo-form">
        <input type="text" id="todo-input" placeholder="Add a task..." required>
        <button type="submit">Add Task</button>
    </form>
    <ul id="todo-list"></ul>

    <script src="app.js"></script>
</body>
</html>
```

Save the file as `index.html` and create a new JavaScript file called `app.js`.

## Step 2: Implement Basic Functionality

In `app.js`, add the following code to implement the basic functionality of the ToDo app:

```javascript
const todoForm = document.getElementById('todo-form');
const todoInput = document.getElementById('todo-input');
const todoList = document.getElementById('todo-list');

todoForm.addEventListener('submit', function(event) {
    event.preventDefault();

    const task = todoInput.value;
    if (task.trim() !== '') {
        const listItem = document.createElement('li');
        listItem.innerHTML = `
            <span>${task}</span>
            <button class="delete">Delete</button>
        `;

        todoList.appendChild(listItem);
        todoInput.value = '';

        const deleteButton = listItem.querySelector('.delete');
        deleteButton.addEventListener('click', function() {
            listItem.remove();
        });
    }
});
```

The code above listens for the form submission event and adds a new task to the list if the input value is not empty. It also adds a "Delete" button to each task item, which removes the item when clicked.

## Step 3: Styling the ToDo App

Now that we have the basic functionality in place, let's add some CSS to style our app. Modify the `index.html` file like this:

```html
<!DOCTYPE html>
<html>
<head>
    <title>ToDo App</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
        }

        form {
            margin-bottom: 20px;
        }

        ul {
            list-style-type: none;
            padding-left: 0;
        }

        li {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .delete {
            margin-left: auto;
            padding: 5px;
            background-color: #ff0000;
            color: #ffffff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <!-- Rest of the HTML content -->
</body>
</html>
```

With the added CSS styles, the app will now have a cleaner and more visually pleasing look.

## Conclusion

You have successfully created a simple ToDo app using JavaScript. This tutorial covered the basic functionality of adding and deleting tasks, as well as styling the app using CSS. Feel free to extend the app by adding more features or customizing the design.

Remember to experiment and have fun while coding!
