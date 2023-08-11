---
title: "Creating a Weather App in JavaScript"
date: 2022-09-14T10:00:00
draft: false
description: "Learn how to create a weather app using JavaScript and the OpenWeatherMap API."
categories:
  - "JavaScript"
tags:
  - "Web Development"
  - "API"
  - "Weather"
type: "featured"
---

# Creating a Weather App in JavaScript

In this tutorial, we will learn how to create a simple weather app using JavaScript and the OpenWeatherMap API. This app will allow users to input the name of a city and get the current weather forecast for that location.

## Prerequisites

Before we start coding, make sure you have the following:

- Basic knowledge of HTML, CSS, and JavaScript.
- An API key from OpenWeatherMap. You can sign up for a free API key on their website.

## HTML Structure

First, let's set up the HTML structure for our app. Create a new HTML file and add the following code:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Weather App</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <header>
    <h1>Weather App</h1>
  </header>

  <main>
    <div id="search-container">
      <input type="text" id="city-input" placeholder="Enter a city name">
      <button id="search-button">Search</button>
    </div>

    <div id="weather-container"></div>
  </main>

  <script src="app.js"></script>
</body>
</html>
```

## CSS Styles

Next, let's style our app using CSS. Create a new CSS file called `styles.css` and add the following code:

```css
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

header {
  background-color: #333;
  color: #fff;
  padding: 20px;
}

h1 {
  margin: 0;
}

#search-container {
  margin-top: 20px;
  text-align: center;
}

#city-input {
  padding: 10px;
}

#search-button {
  padding: 10px;
  background-color: #333;
  color: #fff;
  border: none;
  cursor: pointer;
}

#weather-container {
  margin-top: 20px;
  text-align: center;
}
```

## JavaScript Code

Now let's write the JavaScript code to fetch weather data from the OpenWeatherMap API and display it in our app. Create a new JavaScript file called `app.js` and add the following code:

```javascript
const apiKey = 'YOUR_API_KEY'; // Replace with your actual API key

document.getElementById('search-button').addEventListener('click', () => {
  const city = document.getElementById('city-input').value;
  if (city) {
    getWeather(city);
  }
});

function getWeather(city) {
  const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&appid=${apiKey}`;

  fetch(url)
    .then(response => response.json())
    .then(data => {
      displayWeather(data);
    })
    .catch(error => {
      console.log('Error:', error);
    });
}

function displayWeather(weatherData) {
  const weatherContainer = document.getElementById('weather-container');
  weatherContainer.innerHTML = '';

  const cityName = document.createElement('h2');
  cityName.textContent = weatherData.name;
  weatherContainer.appendChild(cityName);

  const temperature = document.createElement('p');
  temperature.innerHTML = `Temperature: ${weatherData.main.temp}°C`;
  weatherContainer.appendChild(temperature);

  const weatherDescription = document.createElement('p');
  weatherDescription.textContent = weatherData.weather[0].description;
  weatherContainer.appendChild(weatherDescription);
}
```

Replace `'YOUR_API_KEY'` in the code above with your actual API key obtained from OpenWeatherMap.

## Conclusion

Congratulations! You have successfully created a weather app using JavaScript and the OpenWeatherMap API. Users can now enter a city name and see the current weather forecast for that location.

Feel free to customize the app further by adding more features or styling. Happy coding!

---

