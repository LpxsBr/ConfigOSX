FROM sickcodes/docker-osx:latest

USER root

# Cria um wrapper global pro curl
RUN mv /usr/bin/curl /usr/bin/curl.real && \
    echo '#!/bin/bash\n/usr/bin/curl.real -k "$@"' > /usr/bin/curl && \
    chmod +x /usr/bin/curl

USER arch