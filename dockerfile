FROM  danijus.azurecr.io/hugo:0.70.0
COPY . /data
WORKDIR /data
RUN /bin/hugo

###

FROM nginx:alpine
COPY --from=0 /data/public /usr/share/nginx/html