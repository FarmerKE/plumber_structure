FROM --platform=linux/amd64 rocker/r-ver

COPY . .

EXPOSE 8000

RUN R -e "install.packages('plumber')"

ENTRYPOINT ["Rscript", "entrypoint.R"]