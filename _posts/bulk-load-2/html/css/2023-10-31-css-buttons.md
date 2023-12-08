---

layout: post

author: softwareshinobi

title:  "add css file to html file"

categories: [html,jquery]

tags: [html,jquery]

image: https://random.imagecdn.app/820/360

description: "Learn how to add css file to html file"

hidden: false

---

## 1. Create new css file [styling.css]

```css

body {

background-color: #006699

}


```

## Head Tag Modifications [index.html]

put this at the top of the html page

```html

<html>

<head>

    <link rel="stylesheet" href="styling.css">

</head>

<body>

...

</body>

```

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
