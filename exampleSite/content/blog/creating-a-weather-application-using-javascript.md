---
title: "Creating a Weather Application using JavaScript"
date: 2022-07-28T10:00:00
draft: false
description: "Learn how to create a weather application using JavaScript and OpenWeatherMap API"
categories:
  - "Web Development"
tags:
  - "JavaScript"
  - "API"
  - "Weather"
type: "featured"

---

# Creating a Weather Application using JavaScript

In this tutorial, we will learn how to create a weather application using JavaScript and the OpenWeatherMap API. This application will allow users to search for the current weather of any location.

## Prerequisites

To follow along with this tutorial, you will need:

- Basic knowledge of HTML, CSS, and JavaScript
- OpenWeatherMap API key (you can sign up for a free API key at [OpenWeatherMap](https://openweathermap.org/))

## Setting up the HTML

First, let's set up the basic structure of our HTML file:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Weather Application</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div class="container">
    <h1>Weather Application</h1>
    <input type="text" id="locationInput" placeholder="Enter location">
    <button id="searchButton">Search</button>
    <div id="weatherInfo"></div>
  </div>

  <script src="script.js"></script>
</body>
</html>
```

In the above HTML code, we have a container div that contains a heading, an input field for entering the location, a search button, and a div where we will display the weather information.

## Styling with CSS

Next, let's add some basic styling to our application using CSS:

```css
.container {
  max-width: 400px;
  margin: 20px auto;
  padding: 20px;
  text-align: center;
}

h1 {
  font-size: 24px;
  margin-bottom: 20px;
}

input[type="text"] {
  width: 100%;
  margin-bottom: 10px;
  padding: 5px;
}

button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  cursor: pointer;
}

#weatherInfo {
  margin-top: 20px;
  font-size: 18px;
}
```

Save the above code in a file called `styles.css` in the same directory as your HTML file.

## Fetching Weather Data

Now, let's write the JavaScript code to fetch weather data from the OpenWeatherMap API based on the user's search input. Create a new file called `script.js` and add the following code:

```javascript
const API_KEY = "YOUR_API_KEY"; // Replace with your OpenWeatherMap API key

const searchButton = document.querySelector("#searchButton");
const locationInput = document.querySelector("#locationInput");
const weatherInfo = document.querySelector("#weatherInfo");

searchButton.addEventListener("click", () => {
  const location = locationInput.value;

  if (location) {
    fetch(
      `https://api.openweathermap.org/data/2.5/weather?q=${location}&appid=${API_KEY}&units=metric`
    )
      .then(response => response.json())
      .then(data => {
        const temperature = data.main.temp;
        const description = data.weather[0].description;

        weatherInfo.innerText = `Temperature: ${temperature}°C\nDescription: ${description}`;
      })
      .catch(error => {
        console.error(error);
        weatherInfo.innerText = "Error fetching weather data";
      });
  } else {
    weatherInfo.innerText = "Please enter a location";
  }
});
```

Make sure to replace `YOUR_API_KEY` with your actual OpenWeatherMap API key.

In the above code, we have defined event listeners for the search button's click event. When the user clicks the search button, the location entered in the input field is extracted and used to make a fetch request to the OpenWeatherMap API. The response data is then parsed and displayed in the `weatherInfo` div.

## Testing the Application

Open the HTML file in your web browser and test the weather application by entering a location and clicking the search button. The current temperature and weather description for the entered location should be displayed.

Congratulations! You have successfully created a weather application using JavaScript and the OpenWeatherMap API.

You can further enhance this application by adding more features like displaying weather icons, a forecast for multiple days, and styling improvements.

Feel free to explore the [OpenWeatherMap API documentation](https://openweathermap.org/api) for more information on available API endpoints and data formats.

Happy coding!
