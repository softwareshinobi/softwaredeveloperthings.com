---

layout: post

author: softwareshinobi

title:  "lorem ipsum sed"

categories: [lorem-ipsum]

tags: [lorem-ipsum,lorem,ipsum]

image: https://random.imagecdn.app/820/360

description: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti."

hidden: false

---

## update operating system packages

```
sudo apt-get update
```

## install mkdocs

```
sudo apt-get install -y mkdocs
```

## create new mkdocs project

```
mkdocs new .
```

```
INFO    -  Writing config file: ./mkdocs.yml
INFO    -  Writing initial docs: ./docs/index.md
```


## final file

```

#https://squidfunk.github.io/mkdocs-material/setup/setting-up-navigation/#section-index-pages-without

docs_dir: project-documentation

site_name: Docs Home / Robert's Bike Rental

exclude_docs: |
  /images-pictures 
  images-pictures    # A file with this name anywhere.
  images-pictures/            # A "drafts" directory anywhere.
  /requirements.txt  # Top-level "docs/requirements.txt".
  *.py               # Any file with this extension anywhere.
  !/foo/example.py   # But keep this particular file.

theme:
    palette:
    
        primary: lime
    
        scheme: slate

 ##       - navigation.expand
        
    ##
    ## Find More Themes Here:
    ##
    ##     https://mkdocs.github.io/mkdocs-bootswatch/
    ##
    ## List of theme values:
    ##
    ##     mkdocs, readthedocs, material, cerulean, cosmo, 
    ##     cyborg, darkly, flatly, journal, litera, lumen, lux,
    ##     materia, minty, pulse, sandstone, simplex, slate, solar,
    ##     spacelab, superhero, united, yeti 
    ##

    name: material
    
    ## 
    ## you can alternate colors for the navigation header.
    ##
    ## Allowed values: primary (the default), dark, and light:
    ##
    
    nav_style: primary

extra_css: [styling-project-documentation.css]
software-shinobi@robertsrentals:~/roberts-bike-rentals/roberts-bike-rentals-docs/source-code$ 

```
