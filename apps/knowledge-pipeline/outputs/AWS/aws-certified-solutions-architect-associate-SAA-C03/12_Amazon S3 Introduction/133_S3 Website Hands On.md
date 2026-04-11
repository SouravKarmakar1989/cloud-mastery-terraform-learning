# S3 Website Hands On

## Pointwise No-Loss Summary

1. Demo continues by enabling static website hosting on the previously created bucket.
2. Before website setup, beach.jpg is additionally uploaded so bucket has coffee.jpg and beach.jpg.

## Static Website Hosting Configuration

1. In bucket Properties, Static website hosting is edited.
2. Hosting is enabled for static website use.
3. Index document is set to index.html.
4. Console warning highlights that website endpoint requires publicly readable content.
5. Prior public bucket policy setup is referenced as prerequisite already completed.

## Upload Website Index File

1. index.html is uploaded to bucket objects.
2. Returning to Properties now shows bucket website endpoint URL.

## Website Validation

1. Opening endpoint URL displays index page content:
   - "I love coffee. Hello world!"
   - coffee.jpg image.
2. Opening image from page confirms public object URL works.
3. beach.jpg object is also directly reachable, confirming public accessibility.

## Outcome

1. Bucket is successfully serving a static website endpoint, backed by public-read bucket policy and website hosting configuration.
