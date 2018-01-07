# yavkata.co.uk
Just my website full of random bits I've done and written.

### Used tools and frameworks
The creation and deployment of this website is made possible by these great open source projects:

 * Static site generator - [Jekyll](https://github.com/jekyll/jekyll)
 * Jekyll theme - [Jackal](https://clenemt.github.io/jackal/)
 * Deployed on S3 by [s3_website](https://github.com/laurilehmijoki/s3_website)

It's deployed on S3 and served over HTTPS via CloudFront and Route53 with an AWS-issued TLS certificate.

# Build
Requires `jekyll`, `jekyll-paginate` and `s3_website` gems to be installed:

```
$ gem install jekyll jekyll-paginate s3_website
$ git clone git@github.com:yavor-atanasov/yavor-atanasov.git
$ cd yavor-atanasov
$ jekyll build
$ s3_website push
```

Serving the website locally:

```
$ jekyll serve -H 0.0.0.0
```
