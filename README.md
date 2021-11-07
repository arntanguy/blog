# Blog

![Build and Deploy to Github Pages](https://github.com/arntanguy/blog/workflows/Build%20and%20Deploy%20to%20Github%20Pages/badge.svg)
[![Website](https://img.shields.io/badge/website-online-brightgreen?logo=read-the-docs&style=flat)](https://arntanguy.github.io/blog/)


# Gallery

The gallery system is described [here](https://olivierpieters.be/blog/2016/02/26/creating-a-jekyll-image-gallery) ([example website](https://opieters.github.io/jekyll-image-gallery-example/photography/). It is based on [lightgallery](https://github.com/sachinchoolur/lightGallery) and [isotope](https://github.com/metafizzy/isotope).

To generate a new gallery:

First create a set of images of multiple resolutions in `images/galleries/<your-gallery>`. Images with the same base-name differing only by a suffix will be treated as being the same image with a different resolution. E.g:

```
images/galleries/<your-gallery>/image1-2000x2000.jpg
images/galleries/<your-gallery>/image1-toto.jpg
images/galleries/<your-gallery>/image1-original.jpg
images/galleries/<your-gallery>/image2-2000x2000.jpg
images/galleries/<your-gallery>/image2-whatever-suffix.jpg
```

```sh
cd _data/galleries
./gallery_creator.py <your-gallery>
# This will rename the images in /images/galleries/<your-gallery> according to their resolution and create a <your-gallery>.yml file containting its configuration
```

The gallery can then be included with:

```
{% include gallery-layout.html gallery=site.data.galleries.gallery-test %}
```

When adding multiple times the same gallery in the same page, then use `id_number` to distinguish them:

```
{% include gallery-layout.html gallery=site.data.galleries.gallery-test  id_number="1"  %}
{% include gallery-layout.html gallery=site.data.galleries.gallery-test  id_number="2"  %}
```

# CV

The CV page is based on [jekyll-cv](https://github.com/Stavrospanakakis/jekyll-cv).

To update the CV, simply edit the information in `_data/cv.yaml`.
