--- 
title: "Creating a Simple To-Do List Using JavaScript"
date: 2022-06-28T09:00:00
draft: false
description: "Learn how to create a simple to-do list application using JavaScript with source code examples."

categories:
- "JavaScript"
tags:
- "Tutorial"
- "Web Development"
- "JavaScript"
- "HTML"
- "CSS"

type: "featured"
---

# Creating a Simple To-Do List Using JavaScript

In this tutorial, we will learn how to build a simple to-do list application using JavaScript, HTML, and CSS. This application will allow users to add, delete, and mark tasks as completed. Let's get started!

## Prerequisites

To follow along with this tutorial, you need to have a basic understanding of HTML, CSS, and JavaScript. You should also have a code editor installed on your computer.

## Setting Up the HTML Structure

To begin, create a new HTML file and add the following code:

```html
<!DOCTYPE html>
<html>
<head>
  <title>To-Do List</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <h1>To-Do List</h1>
  <div id="tasks">
    <input type="text" id="taskInput" placeholder="Enter a task">
    <button id="addTaskButton">Add</button>
  </div>
  <ul id="taskList"></ul>
  <script src="app.js"></script>
</body>
</html>
```

In the above code, we have a simple structure with a heading, an input field for adding tasks, and a button to add new tasks. We also have an empty unordered list (ul) to display the tasks.

## Styling the To-Do List

Let's add some basic styling to our to-do list. Create a new CSS file called `styles.css` and add the following code:

```css
body {
  font-family: Arial, sans-serif;
}

h1 {
  text-align: center;
}

#tasks {
  margin-bottom: 20px;
}

#taskInput {
  width: 300px;
  padding: 10px;
}

#addTaskButton {
  padding: 10px 15px;
}

ul {
  list-style-type: none;
  padding-left: 0;
}

li {
  margin-bottom: 10px;
}

.completed {
  text-decoration: line-through;
}
```

In the above code, we set the font family, center the heading, add some margin and padding to the input field and button, and define the styles for the task list.

## Adding JavaScript Functionality

Now let's write the JavaScript code to add functionality to our to-do list. Create a new JavaScript file called `app.js` and add the following code:

```javascript
const taskInput = document.getElementById('taskInput');
const addTaskButton = document.getElementById('addTaskButton');
const taskList = document.getElementById('taskList');

addTaskButton.addEventListener('click', addTask);

function addTask() {
  const task = taskInput.value;
  if (task !== '') {
    const li = document.createElement('li');
    li.textContent = task;
    taskList.appendChild(li);
    taskInput.value = '';
  }
}

taskList.addEventListener('click', toggleTaskStatus);

function toggleTaskStatus(event) {
  if (event.target.tagName === 'LI') {
    event.target.classList.toggle('completed');
  }
}
```

In the above code, we first get references to the input field, button, and task list elements using `getElementById()`. We then attach an event listener to the add button to call our `addTask()` function when clicked.

Inside the `addTask()` function, we get the value of the input field and create a new `li` element. We set the text content of the `li` element to the task value and append it to the task list. Finally, we clear the input field by setting its value to an empty string.

We also attach an event listener to the task list to call the `toggleTaskStatus()` function when a list item is clicked. Inside this function, we check if the clicked element is an `li`, and if so, we toggle its "completed" class to mark it as completed or not.

## Running the Application

Save all the files and open the HTML file in a web browser. You should see the to-do list application. You can now add tasks by typing them in the input field and clicking the "Add" button. Clicking on a task will mark it as completed, and clicking again will remove the completed status. 

Congratulations! You have successfully created a simple to-do list application using JavaScript.

## Conclusion

In this tutorial, we learned how to create a simple to-do list application using JavaScript, HTML, and CSS. We covered the basic setup of the HTML structure, added styling using CSS, and implemented the functionality using JavaScript. You can take this application further by adding more features, such as edit and delete task options.

You can find the complete source code for this tutorial on [GitHub](https://github.com/example/to-do-list). Happy coding!
