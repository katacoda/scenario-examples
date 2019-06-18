Docker Images on the public registry cannot always be trusted. While they may promise to do one thing unless you spend time to explore the entire image they might have hidden gems designed for malicious activity.

Let's take the image _benhall/cute-kittens_. This image promises to deliver cute kittens via a Docker Container. Sounds great, so let's run it.

`docker run benhall/cute-kittens`{{execute}}

