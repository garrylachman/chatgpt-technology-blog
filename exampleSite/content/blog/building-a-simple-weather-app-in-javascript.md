---
title: "Building a Simple Weather App in JavaScript"
date: 2022-05-30T13:00:00
draft: false
description: "Learn how to build a simple weather app using JavaScript."
categories:
  - "JavaScript"
tags:
  - "Web Development"
  - "API"
  - "Weather"
type: "featured"
---

# Building a Simple Weather App in JavaScript

In this tutorial, we will walk through the process of building a simple weather app using JavaScript. We will make use of the OpenWeatherMap API to retrieve weather data for a given location and display it on our web page.

## Prerequisites

Before we get started, make sure you have the following:

- Basic knowledge of HTML, CSS, and JavaScript
- A text editor
- A modern web browser

## Step 1: Set Up HTML Markup

First, let's set up the HTML markup for our weather app. Create a new HTML file and add the following code:

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Weather App</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <h1>Weather App</h1>
  <div class="weather-container">
    <input type="text" id="location-input" placeholder="Enter location">
    <button id="search-button">Search</button>
    <div id="weather-info"></div>
  </div>
  <script src="script.js"></script>
</body>
</html>
```

Here, we have a simple layout with an input field, a search button, and a placeholder for displaying the weather information.

## Step 2: Add CSS Styling

Next, let's add some CSS styling to make our weather app visually appealing. Create a new CSS file called `styles.css` and add the following code:

```css
body {
  font-family: Arial, sans-serif;
}

h1 {
  text-align: center;
}

.weather-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 50px;
}

#location-input {
  width: 300px;
  padding: 10px;
  margin-bottom: 10px;
}

#search-button {
  padding: 10px 20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  cursor: pointer;
}

#weather-info {
  margin-top: 20px;
  font-size: 20px;
}
```

This CSS code will style our weather app components, including the input field, search button, and weather information placeholder.

## Step 3: Fetch Weather Data from the API

Now, let's add JavaScript functionality to our app by fetching weather data from the OpenWeatherMap API. Create a new JavaScript file called `script.js` and add the following code:

```javascript
const apiKey = 'YOUR_API_KEY'; // Replace with your OpenWeatherMap API key

const searchButton = document.getElementById('search-button');
const locationInput = document.getElementById('location-input');
const weatherInfo = document.getElementById('weather-info');

searchButton.addEventListener('click', () => {
  const location = locationInput.value;
  const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${location}&appid=${apiKey}&units=metric`;

  fetch(apiUrl)
    .then(response => response.json())
    .then(data => {
      const temperature = data.main.temp;
      const weatherDescription = data.weather[0].description;
      const weatherOutput = `Temperature: ${temperature}°C<br>Weather: ${weatherDescription}`;

      weatherInfo.innerHTML = weatherOutput;
    })
    .catch(error => {
      weatherInfo.innerHTML = 'Error fetching weather data';
      console.error(error);
    });
});
```

Make sure to replace `'YOUR_API_KEY'` with your actual OpenWeatherMap API key. This script handles the logic for fetching weather data based on the user's input and displaying it on the web page.

## Step 4: Test the Weather App

Finally, let's test our weather app. Open the HTML file in your web browser and enter a location in the input field. Click the search button, and you should see the current temperature and weather description for that location.

Congratulations! You have successfully built a simple weather app using JavaScript. Feel free to customize the app's design or enhance its functionality according to your needs.

Make sure to explore the OpenWeatherMap API documentation for other weather data you can retrieve and display in your app.

That's all for this tutorial. Happy coding!

