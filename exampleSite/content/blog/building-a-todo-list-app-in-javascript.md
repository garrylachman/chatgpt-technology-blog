---
title: "Building a Todo List App in JavaScript"
date: 2022-01-10T10:00:00
draft: false
description: "Learn how to build a Todo List application using JavaScript"
categories:
- "Web Development"
tags:
- "JavaScript"
- "Todo List"
- "App Development"
type: "featured"
---

# Building a Todo List App in JavaScript

## Introduction

In this tutorial, we will learn how to build a Todo List application using JavaScript. We will be using HTML, CSS, and JavaScript to create a simple yet functional Todo List app. 

## Prerequisites

To follow along with this tutorial, you need to have basic knowledge of HTML, CSS, and JavaScript. Make sure you have a text editor and a web browser installed on your machine.

## Setup

1. Create a new directory for your project and navigate to it using the command line.
2. Create an HTML file called `index.html` in your project directory and open it in your text editor.
3. Create a CSS file called `styles.css` and add it to your `index.html` file using the `<link>` tag.
4. Create a JavaScript file called `app.js` and link it to your `index.html` file using the `<script>` tag.

## HTML Markup

```html
<!DOCTYPE html>
<html>
<head>
    <title>Todo List App</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Todo List</h1>
    <form id="todo-form">
        <input type="text" id="todo-input" placeholder="Enter a task">
        <button type="submit">Add</button>
    </form>
    <ul id="todo-list"></ul>
    <script src="app.js"></script>
</body>
</html>
```

## CSS Styling

```css
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
    margin-top: 20px;
}

#todo-form {
    text-align: center;
    margin-top: 20px;
}

#todo-form input[type="text"] {
    padding: 10px;
    width: 300px;
}

#todo-form button {
    padding: 10px 15px;
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
}

#todo-list {
    list-style-type: none;
    margin: 20px auto;
    padding: 0;
    max-width: 400px;
}

.todo-item {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: white;
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.todo-item .remove-button {
    background-color: #f44336;
    color: white;
    border: none;
    padding: 5px 10px;
    border-radius: 3px;
    cursor: pointer;
}
```

## JavaScript Functionality

```javascript
const todoForm = document.getElementById('todo-form');
const todoInput = document.getElementById('todo-input');
const todoList = document.getElementById('todo-list');

todoForm.addEventListener('submit', function (event) {
    event.preventDefault();

    const todoText = todoInput.value.trim();
    if (todoText !== '') {
        const todoItem = createTodoItem(todoText);
        todoList.appendChild(todoItem);
        todoInput.value = '';
    }
});

function createTodoItem(todoText) {
    const todoItem = document.createElement('li');
    todoItem.className = 'todo-item';

    const todoTextElement = document.createElement('span');
    todoTextElement.textContent = todoText;
    todoItem.appendChild(todoTextElement);

    const removeButton = document.createElement('button');
    removeButton.className = 'remove-button';
    removeButton.textContent = 'X';
    removeButton.addEventListener('click', function () {
        todoItem.remove();
    });
    todoItem.appendChild(removeButton);

    return todoItem;
}
```

## Testing

1. Open the `index.html` file in your web browser.
2. Enter a task in the input field and click the "Add" button.
3. The task should be added to the todo list below the input field.
4. Click the "X" button next to a task to remove it from the list.

## Conclusion

Congratulations! You have successfully built a Todo List app using JavaScript. This app allows you to add and remove tasks from a list. You can further enhance this app by adding more features like editing tasks or persisting the data in a database.

Feel free to explore and modify the code to customize the app as per your requirements. Happy coding!

---

This tutorial demonstrated how to build a simple Todo List app using JavaScript. The JavaScript code handles the functionality of adding and removing tasks dynamically, while the HTML and CSS files provide the structure and styling for the app. Feel free to use this project as a starting point to expand and customize your own Todo List application!
