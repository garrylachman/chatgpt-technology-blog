--- 
title: "Creating a Simple Web Page with HTML and CSS" 
date: 2021-05-20T12:00:00 
draft: false 
description: "Learn how to create a simple web page using HTML and CSS" 
categories: 
  - "Web Development" 
tags: 
  - "HTML" 
  - "CSS" 
type: "featured" 
--- 

# Creating a Simple Web Page with HTML and CSS

In this tutorial, we will learn how to create a simple web page using HTML and CSS. We will create a basic structure using HTML and then add some CSS to style it. Let's get started!

## HTML Structure

First, let's create the HTML structure for our web page. Open your favorite text editor and create a new file. Save it with a .html extension. Here's the code for our HTML structure:

```html
<!DOCTYPE html>
<html>
<head>
    <title>My Simple Web Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Welcome to My Web Page</h1>
    </header>

    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>

    <main>
        <h2>About Me</h2>
        <p>Hello, my name is John and I am a web developer.</p>
    </main>

    <footer>
        <p>&copy; 2021 My Web Page. All rights reserved.</p>
    </footer>
</body>
</html>
```

Save this file as `index.html`.

## CSS Styling

Now, let's add some CSS to style our web page. Create a new file in the same directory as your HTML file and save it as `styles.css`. Add the following code to your `styles.css` file:

```css
header {
    background-color: #f2f2f2;
    padding: 10px;
}

nav {
    background-color: #333;
    padding: 10px;
}

nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

nav ul li {
    display: inline;
    margin-right: 10px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
}

main {
    margin: 20px;
}

footer {
    background-color: #f2f2f2;
    padding: 10px;
    text-align: center;
}
```

## Finishing Touches

Finally, we just need to link our CSS file to our HTML file. Open the `index.html` file and add the following line in the `<head>` section:

```html
<link rel="stylesheet" type="text/css" href="styles.css">
```

Save the `index.html` file.

## Testing the Web Page

To test our web page, simply open the `index.html` file in your web browser. You should see a basic web page with a header, navigation menu, main content, and footer. The styling should be applied based on the CSS we added.

Congratulations! You have successfully created a simple web page using HTML and CSS. Feel free to experiment with different styles and elements to further enhance your web page.

I hope you found this tutorial helpful. Happy coding!

Note: Make sure to place the `index.html`, `styles.css`, and any other files in the same directory to ensure proper linking and functionality.
