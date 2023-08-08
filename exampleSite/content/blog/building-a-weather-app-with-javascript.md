---
title: "Building a Weather App with JavaScript"
date: 2022-05-25T09:00:00
draft: false
description: "Learn how to build a weather app using JavaScript, HTML, and CSS."
categories:
- "JavaScript"
tags:
- "Web Development"
- "APIs"
- "Weather App"
type: "featured"
---

## Introduction

In this tutorial, we will learn how to build a weather app using JavaScript, HTML, and CSS. We will use the OpenWeatherMap API to fetch real-time weather data and display it on our app. So let's get started!

## Prerequisites

To follow along with this tutorial, you should have a basic understanding of JavaScript, HTML, and CSS. You will also need to sign up for a free API key from OpenWeatherMap (https://openweathermap.org) to retrieve weather data.

## Setting up the Project

Create a new folder for your project and navigate to that folder in your preferred code editor. Create three new files: `index.html`, `style.css`, and `script.js`. 

Open the `index.html` file and add the following code:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Weather App</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <h1>Weather App</h1>
  <input id="cityInput" type="text" placeholder="Enter city">
  <button id="searchButton" type="button">Search</button>
  <div id="weatherContainer"></div>
  <script src="script.js"></script>
</body>
</html>
```

Next, open the `style.css` file and add the following code:

```css
body {
  font-family: Arial, sans-serif;
  text-align: center;
}

h1 {
  color: #333;
}

input {
  padding: 10px;
  margin: 10px;
}

button {
  padding: 10px 20px;
  background-color: #333;
  color: #fff;
  border: none;
  cursor: pointer;
}

#weatherContainer {
  margin-top: 30px;
}
```

Great! We have our basic project structure set up. Now, let's move on to writing the JavaScript code.

## Fetching Weather Data

In your `script.js` file, add the following code:

```javascript
const apiKey = 'YOUR_API_KEY';

document.getElementById('searchButton').addEventListener('click', async () => {
  const city = document.getElementById('cityInput').value;
  const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}&units=metric`;

  const response = await fetch(url);
  const data = await response.json();

  if (data.cod === '404') {
    document.getElementById('weatherContainer').innerHTML = 'City not found';
  } else {
    const temperature = data.main.temp;
    const description = data.weather[0].description;

    const weatherHTML = `
      <h2>${city}</h2>
      <p>${description}</p>
      <p>${temperature}°C</p>
    `;

    document.getElementById('weatherContainer').innerHTML = weatherHTML;
  }
});
```

Make sure to replace `'YOUR_API_KEY'` with your actual OpenWeatherMap API key.

## Testing the App

Open the `index.html` file in your browser. Enter the name of a city in the input field and click the "Search" button. The app will fetch the current weather data for the entered city and display it below the search box.

## Conclusion

Congratulations! You have successfully built a weather app using JavaScript, HTML, and CSS. You can further enhance this app by adding more features like a forecast for multiple days or a location search dropdown. Feel free to experiment and customize it to your liking.

Happy coding!

