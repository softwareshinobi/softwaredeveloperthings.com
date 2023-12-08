---

layout: post

author: softwareshinobi

title:  "Creating A Simple REST API With The Spring Framework"

categories: [ spring-framework, spring-rest]

tags: [spring-framework,spring-rest,tutorials,api]

image: https://random.imagecdn.app/820/360

description: "This guide walks you through the process of creating a 'Hello, World' RESTful web service with Spring."

beforetoc: "Learn how to create a simple REST API using the Spring framework and Spring Boot."

toc: true

featured: true

hidden: false

---

This guide walks you through the process of creating a `Hello, World` RESTful web
service with Spring.

## What You Will Build

You will build a service that will accept HTTP GET requests at:

```
http://localhost:8080/greeting`
```
It will respond with a JSON representation of a greeting, as the following listing shows:

```json
{"id":1,"content":"Hello, World!"}
```

You can customize the greeting with an optional `name` parameter in the query string, as
the following listing shows:

```
http://localhost:8080/greeting?name=User
```

The `name` parameter value overrides the default value of `World` and is reflected in the
response, as the following listing shows:

```json
{"id":1,"content":"Hello, User!"}
```

## What You Need

* About 15 minutes
* A favorite text editor or IDE
* Java 17 or later
* Gradle 7.5+ or Maven 3.5+

## Starting with Spring Initializr

You can use this [pre-initialized Spring Boot project](https://start.spring.io/#!type=maven-project&groupId=com.example&artifactId=rest-service&name=rest-service&description=Demo%20project%20for%20Spring%20Boot&packageName=com.example.rest-service&dependencies=web) and click `Generate` to download a `ZIP` file.

This project is configured to fit the examples in this tutorial.

To manually initialize the project:

1. Navigate to `https://start.spring.io`.
This service pulls in all the dependencies you need for an application and does most of the setup for you.
1. Choose either `Gradle` or `Maven` and the language you want to use. This guide assumes that you chose Java.
1. Click `Dependencies` and select `Spring Web`.
1. Click `Generate`.
1. Download the resulting ZIP file, which is an archive of a web application that is configured with your choices.

`NOTE`: If your IDE has the Spring Initializr integration, you can complete this process from your IDE.

`NOTE`: You can also fork the project from Github and open it in your IDE or other editor.

## Create a Resource Representation Class

Now that you have set up the project and build system, you can create your web service.

Begin the process by thinking about service interactions.

The service will handle `GET` requests for `/greeting`, optionally with a `name` parameter in the query string.

The `GET` request should return a `200 OK` response with JSON in the body that represents a greeting.

It should resemble the following output:

```json
{
    "id": 1,
    "content": "Hello, World!"
}
```

The `id` field is a unique identifier for the greeting, and `content` is the textual
representation of the greeting.

To model the greeting representation, create a resource representation class.

To do so, provide a Java record class for the `id` and `content` data, as the following listing (from `src/main/java/com/example/restservice/Greeting.java`) shows:

```java
package com.example.restservice;

public record Greeting(long id, String content) { }
```

NOTE: This application uses the `Jackson JSON` library to automatically marshal instances of type `Greeting` into JSON. 

Jackson is included by default by the spring boot web starter.

## Create a REST API Controller Class

In Spring's approach to building RESTful web services, HTTP requests are handled by a controller.

These components are identified by the `@RestController` annotation, and the `GreetingController`.

The Greeting controller can be found on the file filesystem at `src/main/java/com/example/restservice/GreetingController.java`.

The Rest Controller handles `GET` requests for `/greeting` by returning a new instance of the `Greeting` class:

```java
package com.example.restservice;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

	private static final String template = "Hello, %s!";
	private final AtomicLong counter = new AtomicLong();

	@GetMapping("/greeting")
	public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
		return new Greeting(counter.incrementAndGet(), String.format(template, name));
	}
}
```

This REST Api controller is concise and simple, but there is plenty going on under the hood.

## Understanding The Rest Controller

The `@GetMapping` annotation ensures that HTTP GET requests to `/greeting` are mapped to the `greeting()` method.

NOTE: There are companion annotations for other HTTP verbs (e.g. `@PostMapping` for POST).

There is also a `@RequestMapping` annotation that they all derive from, and can serve as a synonym (e.g. `@RequestMapping(method=GET)`).

`@RequestParam` binds the value of the query string parameter `name` into the `name` parameter of the `greeting()` method.

If the `name` parameter is absent in the request, the `defaultValue` of `World` is used.

The implementation of the method body creates and returns a new `Greeting` object with `id` and `content` attributes.

The attributes based on the next value from the `counter` and formats the given `name` by using the greeting `template`.

## Important Difference Between REST & MVC

A key difference between a traditional MVC controller and the RESTful web service controller is the way that the HTTP response body is created.

MVC controller rely on view technology to perform server-side rendering of the greeting data and the template HTML in a display acceptable for the user.

RESTful web service controller populates and returns a `Greeting` object without any view content or html content.

The `Greeting` object data will be written directly to the HTTP response as JSON.

## The REST Controller Returns Domain Objects As Output

This code uses Spring `@RestController` annotation, which marks the class as a controller where every method returns a domain object instead of a view.

It is shorthand for including both `@Controller` and `@ResponseBody`.

The `Greeting` object must be converted to JSON. Thanks to Spring's HTTP message converter support, you need not do this conversion manually.

Because Jackson 2 is on the classpath, Spring's `MappingJackson2HttpMessageConverter` is automatically chosen to convert the `Greeting` instance to JSON.

Logging output is displayed. The service should be up and running within a few seconds.

## Test the Service

Now that the service is up, visit `http://localhost:8080/greeting`, where you should see:

```json
{"id":1,"content":"Hello, World!"}
```

Provide a `name` query string parameter by visiting `http://localhost:8080/greeting?name=User`.

Notice how the value of the `content` attribute changes from `Hello, World!` to `Hello, User!`, as the following listing shows:

```json
{"id":2,"content":"Hello, User!"}
```

This change demonstrates that the `@RequestParam` arrangement in `GreetingController` is working as expected. 

The `name` parameter has been given a default value of `World` but can be explicitly overridden through the query string.

Notice also how the `id` attribute has changed from `1` to `2`.

This proves that you are working against the same `GreetingController` instance across multiple requests and that its `counter` field is being incremented on each call as expected.

## Conclusion: Simple REST API Source Code

Congratulations! You have just developed a RESTful web service with Spring.

## Simple REST API Source Code [GitHub]

You are encouraged to play with simple REST api for yourself. 

Get the full project source code on GitHub.

[Get Full Project Code On GitHub](https://link-url-here.org)

## Quick Start: Creating A Simple REST API With The Spring Framework

You are encouraged to play with simple REST api for yourself. 

Get the full project source code on GitHub.

```bash
git clone https://github.com/spring-guides/gs-rest-service.git

cd gs-rest-service/

bash quick-start.bash

```

Navigate your browser to the following URL and give your new API a spin.

```
http://localhost:8080/greeting`
```
