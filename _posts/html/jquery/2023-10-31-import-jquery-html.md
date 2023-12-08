---

layout: post

author: softwareshinobi

title:  "import jquery content into html page"

categories: [html,jquery]

tags: [html,jquery]

image: https://random.imagecdn.app/820/360

description: "Learn how to import jquery content into html page"

hidden: false

---

## Head Tag Modifications [index.html]

put this at the top of the html page

```html

<head>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head> 

```


## Create new javascript file [custom-javascript.js]

```javascript

$(document).ready(function () {

	alert("jquery has been loaded");

});

```

you can `save` this as `custom-javascript.js`.

## Import Created Javascript File [index.html]

put this at the top of the html page

```html

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	<script src="custom-javascript.js"></script>
	
</body>

</html>

```

## Full HTML [index.html]

```html

<!DOCTYPE html>
<html lang="en">

<head>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head> 

  <body>

                      <table id="rent-payment-table" class="table">
                        <thead>
                          <tr>						                            
							
							<th>Id</th>
                            
							<th>Name</th>                           

<th>Description</th>    
                            <th>Rental Price</th>
							<th>Rented User Id </th>
						<th>	Actions</th>
                          </tr>
                        </thead>
                        <tbody >                        					  
						  
	      </tbody>
                      </table>
           			
	<script src="custom-javascript.js"></script>
	
</body>

</html>
```
