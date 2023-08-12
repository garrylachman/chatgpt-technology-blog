--- 
title: "Creating a Weather App in Python"
date: 2021-09-12T09:00:00
draft: false
description: "Learn how to create a weather app using Python and an API"
categories: 
- "Python"
tags: 
- "API"
- "Weather"
- "App"
type: "featured"
---

# Creating a Weather App in Python

In this tutorial, we will learn how to create a simple weather app using Python. We will be using an API to fetch weather data for a given location and display it to the user. Let's get started!

## Prerequisites

Before we start coding, please make sure you have the following:

- Python installed on your machine
- An internet connection to access the weather API

## Setting up the Project

First, let's create a new directory for our project and navigate into it:

```
$ mkdir weather-app
$ cd weather-app
```

Next, let's create a virtual environment for our project. This will help us manage dependencies:

```
$ python -m venv env
```

Activate the virtual environment:

- On Windows:
  ```
  $ env\Scripts\activate
  ```

- On macOS/Linux:
  ```
  $ source env/bin/activate
  ```

## Installing Dependencies

We will be using the `requests` library to make HTTP requests to the weather API. Let's install it using pip:

```
$ pip install requests
```

## Writing the Code

First, let's import the necessary libraries:

```python
import requests
```

Next, let's define a function that will fetch weather data using the API:

```python
def get_weather_data(location):
    url = f"https://api.example.com/weather?location={location}"
    response = requests.get(url)
    return response.json()
```

Replace `api.example.com` with the actual URL of the weather API you are using. Make sure to check the API documentation for the correct endpoint and query parameters.

Now, let's ask the user for a location and call the `get_weather_data` function to fetch the weather data:

```python
location = input("Enter a location: ")
weather_data = get_weather_data(location)
```

Finally, let's display the weather data to the user:

```python
print(f"Weather in {location}:")
print(f"Temperature: {weather_data['temperature']}°C")
print(f"Description: {weather_data['description']}")
```

## Running the App

Save the code in a file called `weather_app.py` inside the `weather-app` directory. Then, run the following command to start the app:

```
$ python weather_app.py
```

You will be prompted to enter a location. Once you do, the app will fetch and display the weather data for that location.

## Conclusion

Congratulations! You have successfully created a weather app in Python. You learned how to fetch data from an API and display it to the user. Feel free to enhance the app by adding more features, such as a forecast for the upcoming days.

I hope you found this tutorial helpful. Happy coding!

This blog post is also available on my personal website at [example.com](https://example.com/tutorial) for reference.
