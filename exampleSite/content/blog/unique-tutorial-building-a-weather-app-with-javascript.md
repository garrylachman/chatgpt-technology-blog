---
title: "Unique Tutorial: Building a Weather App with JavaScript"
date: 2022-12-01T09:00:00
draft: false
description: "Learn how to build a weather application using JavaScript, HTML, and CSS."
categories:
  - "Web Development"
tags:
  - "JavaScript"
  - "HTML"
  - "CSS"
  - "Weather App"
type: "featured"
---

# Building a Weather App with JavaScript

In this tutorial, we will learn how to build a weather application using JavaScript, HTML, and CSS. We will be using the OpenWeatherMap API to fetch weather information and display it on our application.

## Prerequisites

To follow along with this tutorial, you should have basic knowledge of HTML, CSS, and JavaScript.

## Setting Up the HTML

To start building our weather app, we need to create an HTML structure.

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Weather App</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Weather App</h1>
  
  <div class="container">
    <label for="city-input">Enter City:</label>
    <input type="text" id="city-input">
    <button id="get-weather-btn">Get Weather</button>
  </div>
  
  <div id="weather-info">
    <h2 id="city-name"></h2>
    <p id="temperature"></p>
    <p id="weather-description"></p>
  </div>
  
  <script src="script.js"></script>
</body>
</html>
```

## Styling the App

Let's add some basic styling to our weather app by creating a CSS file called `style.css` and linking it to our HTML.

```css
.container {
  margin-top: 20px;
}

input[type="text"] {
  padding: 5px;
  font-size: 16px;
}

button {
  padding: 5px 10px;
  font-size: 16px;
}

#weather-info {
  margin-top: 20px;
}
```

## Fetching Weather Data

We will be using the [`fetch`](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API) function to fetch weather data from the OpenWeatherMap API.

Create a JavaScript file called `script.js` and add the following code:

```javascript
const apiKey = "<your_openweathermap_api_key>";

document.getElementById("get-weather-btn").addEventListener("click", () => {
  const city = document.getElementById("city-input").value;
  getWeatherData(city);
});

function getWeatherData(city) {
  fetch(`https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}`)
    .then(response => response.json())
    .then(data => {
      displayWeatherInfo(data);
    })
    .catch(error => {
      console.log(error);
    });
}

function displayWeatherInfo(data) {
  const cityName = data.name;
  const temperature = Math.round(data.main.temp - 273.15);
  const weatherDescription = data.weather[0].description;
  
  document.getElementById("city-name").textContent = cityName;
  document.getElementById("temperature").textContent = `Temperature: ${temperature}°C`;
  document.getElementById("weather-description").textContent = `Weather: ${weatherDescription}`;
}
```

Replace `<your_openweathermap_api_key>` with your actual OpenWeatherMap API key.

## Running the App

Open the HTML file in your web browser and you should see the weather app. Enter a city name in the input field, click the "Get Weather" button, and the weather information for that city should be displayed below.

Congratulations! You have successfully built a weather app using JavaScript, HTML, and CSS.

Feel free to enhance the app further by adding more features like icons, additional weather information, or styling improvements.

Keep coding and happy programming!


