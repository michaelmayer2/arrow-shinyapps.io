# arrow-shinyapps.io
Example on how to get the latest arrow version onto shinyapps.io

## Instructions

Simply publish the app here against [shinapps.io](https://shinyapps.io)

## Making use of snappy compression in your own app

Old and current versions of the arrow package are still missing the snappy compression feature - until arrow 6.0.2+ is released, nightly builds need to be used. 

Use [this link](https://ursalabs.org/arrow-r-nightly/articles/install.html#install-the-nightly-build) in order to install the nightly build into your renv environment. 

Then, before publishing, it is helpful to use

```
r<-options()$repos
r["AWS"]<-"https://arrow-r-nightly.s3.amazonaws.com"
options(repos=r)
rsconnect::writeManifest()
```

to ensure that shinyapps.io can find the nightly build again. 
