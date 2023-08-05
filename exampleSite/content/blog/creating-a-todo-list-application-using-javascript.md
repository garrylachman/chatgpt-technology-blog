--- 
title: "Creating a Todo List Application using JavaScript"
date: 2022-06-20T09:00:00
draft: false
description: "Learn how to build a Todo List application using JavaScript."
categories: 
- "Web Development"
tags: 
- "JavaScript"
- "HTML"
- "CSS"
type: "featured"
---

# Creating a Todo List Application using JavaScript

In this tutorial, we will learn how to build a simple Todo List application using JavaScript. The application will allow users to add tasks to a list, mark tasks as completed, and remove tasks from the list.

## Prerequisites

To follow along with this tutorial, you should have a basic understanding of HTML, CSS, and JavaScript.

## Step 1: Setting up the HTML structure

First, let's set up the HTML structure for our Todo List application. Create a new HTML file and add the following code:

```html
<!DOCTYPE html>
<html>
<head>
    <title>Todo List</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Todo List</h1>

    <form id="task-form">
        <input type="text" id="task-input" placeholder="Enter new task">
        <button type="submit">Add Task</button>
    </form>

    <ul id="task-list"></ul>

    <script src="script.js"></script>
</body>
</html>
```

In the `<head>` section, we link our CSS file and set the title of the page. Inside the `<body>`, we have a heading, a form to add new tasks, an empty `<ul>` element to display the tasks, and a script tag to import our JavaScript file.

## Step 2: Styling the Todo List

Next, let's style our Todo List application. Create a new CSS file called `styles.css` and add the following code:

```css
body {
    font-family: Arial, sans-serif;
}

h1 {
    text-align: center;
}

form {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

input[type="text"] {
    padding: 5px;
    width: 300px;
}

button {
    padding: 5px 10px;
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
    color: gray;
}
```

This CSS code provides a basic styling for our Todo List application. Feel free to customize it according to your preference.

## Step 3: Implementing the JavaScript functionality

Now, let's add the JavaScript code to implement the functionality of our Todo List application. Create a new JavaScript file called `script.js` and add the following code:

```javascript
const form = document.getElementById('task-form');
const taskInput = document.getElementById('task-input');
const taskList = document.getElementById('task-list');

form.addEventListener('submit', function (event) {
    event.preventDefault();
    
    const taskText = taskInput.value.trim();
    if (taskText === '') {
        return;
    }
    
    const taskElement = document.createElement('li');
    taskElement.innerText = taskText;

    const deleteButton = document.createElement('button');
    deleteButton.innerText = 'Delete';
    deleteButton.addEventListener('click', function () {
        taskElement.remove();
    });

    taskElement.appendChild(deleteButton);
    
    taskList.appendChild(taskElement);
    
    taskInput.value = '';
});

taskList.addEventListener('click', function (event) {
    const clickedElement = event.target;
    if (clickedElement.tagName === 'LI') {
        clickedElement.classList.toggle('completed');
    }
});
```

This JavaScript code adds event listeners to the form and the task list. When the form is submitted, it creates a new `<li>` element to represent the task, adds a delete button to it, and appends it to the task list. When a task is clicked, it toggles the `completed` class to mark it as completed or not.

## Step 4: Testing the Todo List

Open your HTML file in a web browser and test your Todo List application. You should be able to add tasks, mark them as completed, and delete them from the list.

Congratulations! You have successfully built a Todo List application using JavaScript.

## Conclusion

In this tutorial, we learned how to create a simple Todo List application using JavaScript. We covered setting up the HTML structure, styling the application with CSS, and implementing the necessary JavaScript functionality. You can further enhance the application by adding features like local storage support or editing tasks. 

Feel free to experiment and customize the application to suit your needs. Happy coding!
