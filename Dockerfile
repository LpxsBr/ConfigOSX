# FROM sickcodes/docker-osx:latest

# USER root

# # 🔥 Wrapper global do curl (corrigido)
# # RUN mv /usr/bin/curl /usr/bin/curl.real && \
# #     printf '#!/bin/sh\nexec /usr/bin/curl.real -k "$@"\n' > /usr/bin/curl && \
# #     chmod +x /usr/bin/curl


# # 🔥 bypass git SSL
# RUN git config --system http.sslVerify false

# USER arch

FROM sickcodes/docker-osx:latest

USER root

RUN grep -q "insecure" /home/arch/.curlrc || echo "insecure" >> /home/arch/.curlrc

RUN git config --system http.sslVerify false

USER arch