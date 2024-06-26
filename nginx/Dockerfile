FROM nginx:1.25.3

ENV NODE_MAJOR=20

# Remove default nginx default site
RUN rm -rf /etc/nginx/conf.d/default.conf \
    && rm -rf /etc/nginx/sites-enabled/default \
    && rm -rf /etc/nginx/sites-available/default

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy server blocks and create symbolic link
COPY jb-ide1.conf /etc/nginx/sites-available/jb-ide1.conf

RUN ln -s /etc/nginx/sites-available/jb-ide1.conf /etc/nginx/conf.d/jb-ide1.conf


COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# port for all tcp apps
EXPOSE 80

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]