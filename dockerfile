FROM  danijus.azurecr.io/hugo:0.70.0
COPY . /data
WORKDIR /data
EXPOSE 80
ENTRYPOINT ["/bin/hugo", "server", "--port", "443", "--bind", "0.0.0.0", "-b", "http://localhost/"]