---
title: "A Beginner's Guide to HTML and CSS"
date: 2021-07-12T14:30:00
draft: false
description: "Learn the basics of HTML and CSS in this tutorial"
categories:
  - "Web Development"
tags:
  - "HTML"
  - "CSS"
type: "featured"
---

# A Beginner's Guide to HTML and CSS

HTML (Hypertext Markup Language) and CSS (Cascading Style Sheets) are the building blocks of web development. HTML provides the structure and content of a web page, while CSS is responsible for the presentation and styling. In this tutorial, we will cover the basics of HTML and CSS, along with some source code examples.

## HTML

HTML is a markup language used for creating the structure and content of web pages. It uses tags to define different elements such as headings, paragraphs, lists, images, and more. Here's an example of a simple HTML document:

```html
<!DOCTYPE html>
<html>
<head>
  <title>My First Web Page</title>
</head>
<body>
  <h1>Welcome to my website</h1>
  <p>This is a paragraph of text.</p>
  <img src="image.jpg" alt="An image">
</body>
</html>
```

In the above code snippet, we have the basic structure of an HTML document. The `<!DOCTYPE html>` declaration tells the browser that this is an HTML5 document. The `<html>` element is the root element of the document, and all other elements are contained within it. The `<head>` element contains meta-information about the page, such as the title. The `<body>` element contains the visible content of the page.

## CSS

CSS is a language used to describe the presentation and style of an HTML document. It allows you to control the layout, colors, fonts, and other visual aspects of your web pages. Here's an example of CSS code that styles the HTML document we saw earlier:

```css
h1 {
  color: blue;
  font-size: 24px;
}

p {
  color: green;
  font-size: 16px;
}

img {
  width: 200px;
  height: 150px;
}
```

In the above CSS code, we define styles for the `<h1>`, `<p>`, and `<img>` elements. The `color` property sets the text color, `font-size` controls the font size, and `width` and `height` specify the dimensions of the image.

To apply this CSS to our HTML document, we can link the CSS file using the `<link>` element in the `<head>` section:

```html
<!DOCTYPE html>
<html>
<head>
  <title>My First Web Page</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <!-- HTML content here -->
</body>
</html>
```

Make sure both the HTML and CSS files are in the same directory for this to work.

## Conclusion

In this tutorial, we learned the basic syntax of HTML and CSS and saw how they work together to create web pages. HTML provides the structure and content, while CSS enhances the presentation and style. With this knowledge, you can start building your own simple web pages and gradually explore more advanced techniques.

Remember to practice writing HTML and CSS code to reinforce your understanding. Experiment with different elements and styles to see their effects on the web page. Have fun and happy coding!

By following this tutorial, you have taken your first step towards becoming a web developer. Stay tuned for more advanced tutorials in web development!

---

I hope you find this tutorial helpful in getting started with HTML and CSS. If you have any questions, feel free to ask!
