### Deployment

To build canSnippet run the following command:

```
docker build -t cansnippet .
docker run -ti -p 8080:80 -d cansnippet
```
The application is available at: http://localhost:8080/install.php

canSnippet: https://github.com/ademcan/canSnippet
apache-php: https://github.com/pensiero/dockerfile-apache-php
