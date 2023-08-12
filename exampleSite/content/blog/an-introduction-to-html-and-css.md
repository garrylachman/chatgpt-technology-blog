--- 
title: "An Introduction to HTML and CSS"
date: 2022-10-14T09:00:00
draft: false
description: "Learn the basics of HTML and CSS to build stunning webpages."
categories:
- "Web Development"
tags:
- "HTML"
- "CSS"
type: "featured"
---

# An Introduction to HTML and CSS

In today's tutorial, we will dive into the world of web development and learn the basics of HTML and CSS. HTML (Hypertext Markup Language) is the standard markup language for creating webpages, while CSS (Cascading Style Sheets) is used for styling the content of those webpages. By the end of this tutorial, you'll be able to create your own webpages and make them visually appealing.

## Table of Contents

1. HTML Basics
2. CSS Basics
3. Styling HTML Elements
4. Building a Simple Webpage
5. Conclusion

## HTML Basics

HTML is the language used to structure the content of a webpage. It consists of a series of tags that define the structure and elements of the page. Here's an example of a basic HTML document:

```html
<!DOCTYPE html>
<html>
<head>
  <title>My First Webpage</title>
</head>
<body>
  <h1>Welcome to My Webpage</h1>
  <p>This is a paragraph of text.</p>
</body>
</html>
```

In this example, we have an HTML document that contains a `head` and a `body` section. The `head` section contains meta-information about the webpage, such as the page title. The `body` section contains the actual content that will be displayed in the browser. HTML tags are enclosed in angle brackets (`<>`) and usually come in pairs, with an opening tag and a closing tag.

## CSS Basics

CSS is used to style the HTML elements of a webpage. It allows you to control the layout, colors, fonts, and other visual aspects of the content. CSS works by selecting HTML elements and applying styles to them. Here's an example of a CSS rule:

```css
p {
  color: blue;
  font-size: 16px;
}
```

In this example, we are selecting all `p` elements and setting their color to blue and font size to 16 pixels. CSS rules consist of a selector (in this case, `p`) and one or more declarations enclosed in curly brackets.

## Styling HTML Elements

To apply CSS styles to HTML elements, we use the `style` attribute. Let's see an example:

```html
<p style="color: red; font-weight: bold;">This text is red and bold.</p>
```

In this example, we are applying the CSS styles directly to the `p` element using the `style` attribute. The `style` attribute accepts CSS declarations separated by semicolons.

## Building a Simple Webpage

Now that we've covered the basics of HTML and CSS, let's put our knowledge into practice and build a simple webpage. Here's an example:

```html
<!DOCTYPE html>
<html>
<head>
  <title>My First Webpage</title>
  <style>
    body {
      background-color: lightgray;
    }

    h1 {
      color: blue;
      text-align: center;
    }
  </style>
</head>
<body>
  <h1>Welcome to My Webpage</h1>
  <p>This is a paragraph of text.</p>
</body>
</html>
```

In this example, we have included a `style` tag in the `head` section to define the CSS styles for our webpage. The `body` background color is set to light gray, and the `h1` heading is styled with blue color and centered alignment.

## Conclusion

Congratulations! You have now learned the basics of HTML and CSS. You can now create your own webpages and apply styles to make them visually appealing. Keep exploring HTML and CSS to enhance your web development skills.

I hope you found this tutorial helpful. Happy coding!
