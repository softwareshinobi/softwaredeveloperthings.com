---

layout: post

author: softwareshinobi

title:  "How can I set a default value for a field in a Django model?"

categories: [django-framework]

tags: [django,python]

image: https://random.imagecdn.app/820/360

description: "How can I set a default value for a field in a Django model??"

hidden: false

---

from django.db import models

class Bike(models.Model):

    name = models.CharField("name", max_length=240)

    description = models.CharField("description", max_length=240)

    rental_price = models.FloatField("rental_price", default=999.99)
 
    rented_user_id = models.CharField("rented_user_id", default="", max_length=240)

    def __str__(self):

        return self.name

## resources

https://www.webforefront.com/django/modeldatatypesandvalidation.html#google_vignette
