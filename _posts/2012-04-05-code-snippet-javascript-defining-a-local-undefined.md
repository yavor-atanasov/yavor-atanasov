---
title: Code snippet - defining a local undefined in JavaScript
desc: Although already introduced features of ECMAScript5 fix this, the global property undefined in older versions of JavaScript is writable just like any other property.
syntax: true
---

Although [already introduced features of ECMAScript5](https://developer.mozilla.org/en/JavaScript/New_in_JavaScript/1.8.5) fix this, the global property undefined in older versions of JavaScript is writable just like any other property. This means someone can override it which can cause trouble in a shared environment where everyone assumes its value.

{% highlight javascript %}
undefined = "not undefined anymore";
(function(arg1, arg2, undefined){

    // undefined is undefined in here

})(value1, value2);
{% endhighlight %}

This creates a locally scoped variable undefined that has the value of undefined (more on the type, value and variable undefined [here](http://javascriptweblog.wordpress.com/2010/08/16/understanding-undefined-and-preventing-referenceerrors/)). This way your code does not rely on the “fragile” global undefined and is more robust.
More info:

 - [Undefined – Mozilla Developer Network](https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/undefined)
 - [New in JavaScript 1.8.5](https://developer.mozilla.org/en/JavaScript/New_in_JavaScript/1.8.5)
 - [Understanding JavaScript’s undefined](http://javascriptweblog.wordpress.com/2010/08/16/understanding-undefined-and-preventing-referenceerrors/)

