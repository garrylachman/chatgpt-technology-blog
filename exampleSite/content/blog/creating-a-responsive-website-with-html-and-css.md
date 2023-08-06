--- 
title: "Creating a Responsive Website with HTML and CSS" 
date: 2022-10-15T09:00:00 
draft: false 
description: "Learn how to create a responsive website using HTML and CSS" 
categories: 
- "Web Development" 
tags: 
- "HTML" 
- "CSS" 
type: "featured" 
--- 

# Creating a Responsive Website with HTML and CSS

In this tutorial, we will learn how to create a responsive website using HTML and CSS. A responsive website is designed to adapt its layout and appearance based on the size and orientation of the user's device screen. 

## Prerequisites

Before we begin, you should have a basic understanding of HTML and CSS. If you are new to these technologies, I recommend checking out some beginner tutorials first.

## Set up the HTML Structure

First, let's set up the basic structure of our HTML file. Create a new file named `index.html` and open it in your preferred text editor. Paste the following code:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Responsive Website</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <section>
      <h1>Welcome to Our Website!</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultricies pulvinar ex, a ultrices orci ultrices vel.</p>
    </section>
  </main>

  <footer>
    <p>&copy; 2022 Your Website. All rights reserved.</p>
  </footer>
</body>
</html>
```

Save the file and create a new file named `styles.css` in the same directory.

## Add CSS Styling

Now, let's add some CSS styling to make our website responsive. Open the `styles.css` file and paste the following code:

```css
/* Global Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

/* Header Styles */
header {
  background-color: #333;
  padding: 20px;
  color: #fff;
}

nav ul {
  list-style-type: none;
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

/* Main Styles */
main {
  padding: 20px;
}

section {
  margin-bottom: 20px;
}

/* Footer Styles */
footer {
  background-color: #333;
  padding: 10px;
  color: #fff;
  text-align: center;
}
```

Save the `styles.css` file and open the `index.html` file in your browser. You should see a basic website layout with a navigation bar, main content section, and footer.

## Making it Responsive

To make our website responsive, we will use CSS media queries. Media queries allow us to apply different CSS styles based on the screen size. Add the following code at the bottom of the `styles.css` file:

```css
/* Media Queries */
@media only screen and (max-width: 600px) {
  body {
    font-size: 14px;
  }

  /* Header Styles */
  header {
    padding: 10px;
  }

  nav ul li {
    display: block;
    margin-bottom: 10px;
  }
}

@media only screen and (min-width: 601px) and (max-width: 1024px) {
  body {
    font-size: 16px;
  }
}
```

Save the file and refresh the `index.html` file in your browser. You will notice that the font size, header padding, and navigation items change when the screen width is less than 601 pixels or between 601 and 1024 pixels.

Congratulations! You have successfully created a responsive website using HTML and CSS. Feel free to customize the styles and content as per your requirements.

Remember to test your website on different devices and screen sizes to ensure responsiveness.

I hope you found this tutorial helpful. Happy coding!
