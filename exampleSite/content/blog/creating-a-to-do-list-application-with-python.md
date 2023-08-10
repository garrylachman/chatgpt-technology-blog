---
title: "Creating a To-Do List Application with Python"
date: 2022-10-13T09:00:00
draft: false
description: "Learn how to build a to-do list application using Python and tkinter"
categories:
- "Python"
tags:
- "GUI"
- "Application"
- "Programming"
type: "featured"
---

# Creating a To-Do List Application with Python

In this tutorial, we will be building a simple to-do list application using Python and the tkinter library. This application will allow users to add tasks, mark them as complete, and delete tasks from the list.

## Prerequisites

Before we begin, make sure you have Python and tkinter installed on your machine. You can check if tkinter is installed by running the following command in your terminal:

```shell
python -m tkinter
```

If tkinter is not installed, you can install it using the following command:

```shell
pip install tkinter
```

## Project Setup

To start, create a new Python file called `todo_app.py` and import the necessary modules:

```python
from tkinter import *
import tkinter.messagebox as mb
```

Next, let's create a window for our application:

```python
root = Tk()
root.title("To-Do List Application")
```

Now, let's add a class called `ToDoApp` that will handle all the functionality of our application:

```python
class ToDoApp:
    def __init__(self, root):
        self.root = root

    def start(self):
        self.create_widgets()

    def create_widgets(self):
        # Add your code here

app = ToDoApp(root)
app.start()
root.mainloop()
```

Inside the `create_widgets` method, we will add all the elements of our to-do list application. Let's start by adding a text entry widget and a button to add tasks:

```python
def create_widgets(self):
    self.task_entry = Entry(self.root, width=30)
    self.task_entry.grid(row=0, column=0, padx=10, pady=10)

    self.add_button = Button(self.root, text="Add", command=self.add_task)
    self.add_button.grid(row=0, column=1, padx=5, pady=10)
```

Next, let's add a listbox widget to display the tasks:

```python
def create_widgets(self):
    # ...

    self.task_list = Listbox(self.root, width=40)
    self.task_list.grid(row=1, column=0, columnspan=2, padx=10, pady=10)
```

Now, let's implement the `add_task` method that will add a new task to the list:

```python
def add_task(self):
    task = self.task_entry.get()

    if not task:
        mb.showwarning("Warning", "Please enter a task.")
        return

    self.task_list.insert(END, task)
    self.task_entry.delete(0, "end")
```

We also want to allow users to mark tasks as complete and delete tasks from the list. Let's add two buttons for these actions:

```python
def create_widgets(self):
    # ...

    self.complete_button = Button(self.root, text="Mark Complete", command=self.mark_complete)
    self.complete_button.grid(row=2, column=0, padx=5, pady=10)

    self.delete_button = Button(self.root, text="Delete", command=self.delete_task)
    self.delete_button.grid(row=2, column=1, padx=5, pady=10)
```

Now, let's implement the `mark_complete` and `delete_task` methods:

```python
def mark_complete(self):
    selected_task = self.task_list.curselection()

    if not selected_task:
        mb.showwarning("Warning", "Please select a task.")
        return

    self.task_list.itemconfig(selected_task, bg="green")

def delete_task(self):
    selected_task = self.task_list.curselection()

    if not selected_task:
        mb.showwarning("Warning", "Please select a task.")
        return

    self.task_list.delete(selected_task)
```

Finally, let's add some finishing touches to our application:

```python
def start(self):
    self.create_widgets()
    self.root.mainloop()
```

And that's it! You have successfully built a to-do list application using Python and tkinter. You can run the application by executing the `todo_app.py` file.

## Conclusion

In this tutorial, we learned how to create a to-do list application using Python and the tkinter library. We covered the basic functionality of adding tasks, marking them as complete, and deleting tasks from the list. Feel free to explore and expand upon this application to fit your needs.

You can find the complete source code for this tutorial on [GitHub](https://github.com/example/todo-app-python).

Happy coding!
