# All About JSX For Building Apps In React

## Introduction

In this article, you will learn JSX, what it is and why to use it for your React apps.

## What We'll Cover Today

**What is JSX**. JSX is something you use all the time in React. Lets explain what it is.

- **Why use it**. You can opt out of using JSX but almost no one does, and it does make your life simpler.

## What & Why

JSX is pretty much you writing XML in JavaScript.

It's a _pre processor_ step.

You don't have to have it, but it makes life a whole lot easier.

## Simple JSX Example

This is a simple JSX example on one line of code:

```js
const Elem = <h1>Some title</h1>;

// and you can use it in React like so:
<div>
  <Elem />
</div>
```

The above declaration of `Elem` looks like XML in JavaScript. So what happens? When it is being processed, it is turned into the following ES5 code:

```js
React.createElement('Elem', null, 'Some title');
```

Ok so calling `createElement`, here are the parameters:

* First parameter, element name**.`Elem` becomes the element name.

* Second parameter, attributes**. the second argument above is `null` and represents our element attributes, which we don't have any.

* Third parameter, element value**. The third and last argument is the elements value.

### This Time With An attribute example

Let's look at an example below where we give it an attribute:

```js
const Elem = <h1>Some title</h1>;

// usage:
<div>
  <Elem title="a title" />
</div>
```

The above would become the following code:

```js
React.createElement(
  'Elem', 
  { 
    title: 'a title' 
  }, 
  'Some title'
);
```

Above we can see that our attribute `title` is now part of the second argument.

## Multiline JSX

When you need to create JSX that spans multiple lines wrap multiple elements in a parenthesis `()`, like so:

```jsx
const Elem =
(
  <div>
    <h1>Some title</h1>
    <div>Some content</div>
  </div>
)
```

## There Can Only Be One Parent In JSX

JSX needs to have one parent. The following would be **incorrect**:

```html
<!-- would be incorrect, no parent element -->
const Elem =
(
  <h1>Some title</h1>
  <div>Some content</div>
)
```

You can fix this by either:

* Wrapping it in an element.

You can wrap your content in a div element like this:

```html
const Elem =
(
  <div>
    <h1>Some title</h1>
    <div>Some content</div>
  </div>
)
```

* Use `React.Fragment`.

You can wrap it in a `React.Fragment`, like this:

```html
const Elem = (
<React.Fragment>
  <h1>Some title</h1>
  <div>Some content</div>
</React.Fragment>
)
```

`React.Fragment` would be the parent element instead of using a `div`.

## Summary

JSX isn't too bad.

JSX is similar to XML that gets translated to `React.createElement()` calls.

JSX spanning multiple lines needs parenthesis to work.

You can only have one parent.

