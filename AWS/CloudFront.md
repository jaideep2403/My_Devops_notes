cdn - content delivery network
map cdn to dns, keeps multiple local copie at edge locations rather than a central location


## problems without cdn
- host website from s3 bucket, not best practice as user has access to bucket,
- security concern , latency issues, cost as when we upload download.

cdn helps to cache the content in nearest edge location, request dont have to go to website , can go to edge loaction

## with cdn
- dont have to access s3 directly , no upload download cost as content is cached in edge loaction.
- lowest latency.
