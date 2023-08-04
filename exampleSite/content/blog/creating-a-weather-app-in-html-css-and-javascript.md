--- 
title: "Creating a Weather App in HTML, CSS, and JavaScript"
date: 2021-10-15T12:00:00
draft: false
description: "Learn how to create a weather app using HTML, CSS, and JavaScript to display current weather information."
categories:
  - "Web Development"
tags:
  - "HTML"
  - "CSS"
  - "JavaScript"
type: "featured"
--- 

# Creating a Weather App in HTML, CSS, and JavaScript

In this tutorial, we will be building a weather app using HTML, CSS, and JavaScript. We will be using the OpenWeather API to fetch current weather data and display it on our app. Let's get started!

## Prerequisites

Before we begin, make sure you have the following:

- Basic knowledge of HTML, CSS, and JavaScript
- A code editor of your choice (e.g., Visual Studio Code)
- An API key from OpenWeather API (signup for a free API key at [OpenWeatherMap](https://openweathermap.org/))

## Setting Up the HTML Structure

First, let's start by setting up the HTML structure for our weather app. Create a new HTML file and add the following code:

```html
<!DOCTYPE html>
<html>
<head>
    <title>Weather App</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1 class="app-title">Weather App</h1>
        <div class="weather-card" id="weatherCard">
            <h2 class="location">Loading...</h2>
            <h3 class="temperature">Loading...</h3>
            <img class="weather-icon" id="weatherIcon" src="" alt="Weather Icon">
            <h4 class="description">Loading...</h4>
        </div>
    </div>
    <script src="app.js"></script>
</body>
</html>
```

In the above code, we have a basic HTML structure with a container div that holds our weather card. Inside the weather card div, we have placeholders for location, temperature, weather icon, and description. We have also linked our CSS file and added a JavaScript file at the end of the body tag.

## Styling the Weather App with CSS

Next, let's style our weather app using CSS. Create a new CSS file named `styles.css` and add the following code:

```css
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.app-title {
    text-align: center;
}

.weather-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 20px;
    border: 1px solid #ccc;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    border-radius: 5px;
}

.weather-icon {
    width: 100px;
    height: 100px;
    margin-top: 20px;
}

```

In the CSS code above, we have styled our `container` div to center align its contents vertically and horizontally. We have also styled the `weather-card` div and added some basic styling for the `weather-icon`.

## Fetching Weather Data with JavaScript

Now, let's fetch the weather data using JavaScript. Create a new JavaScript file named `app.js` and add the following code:

```javascript
const apiKey = "YOUR_API_KEY";
const city = "New York";

const weatherCard = document.getElementById("weatherCard");
const locationElement = document.querySelector(".location");
const temperatureElement = document.querySelector(".temperature");
const weatherIconElement = document.getElementById("weatherIcon");
const descriptionElement = document.querySelector(".description");

fetch(`https://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&appid=${apiKey}`)
    .then(response => response.json())
    .then(data => {
        const { name, main, weather } = data;
        locationElement.textContent = name;
        temperatureElement.textContent = `${main.temp}°C`;
        weatherIconElement.src = `https://openweathermap.org/img/wn/${weather[0].icon}.png`;
        descriptionElement.textContent = weather[0].description;
    })
    .catch(error => console.log(error));
```

In the JavaScript code above, replace `YOUR_API_KEY` with your actual API key obtained from OpenWeatherMap. We make a request to the OpenWeather API using `fetch` and retrieve the weather data for a specific city. Once we receive the response, we extract the necessary information such as location, temperature, weather icon, and description, and update the respective elements in our HTML.

## Running the Weather App

To run the weather app, simply open the HTML file in your browser. You should see the weather card with the location and temperature details. If the API request is successful, the location and temperature will be updated with the actual weather data.

Congratulations! You have successfully created a weather app using HTML, CSS, and JavaScript. Feel free to explore further enhancements such as adding additional weather details or implementing a search functionality to fetch weather data for different cities.

I hope you found this tutorial helpful. Happy coding!


