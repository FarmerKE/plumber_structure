FROM --platform=linux/amd64 rocker/r-ver

COPY . .

EXPOSE 8000

RUN R -e "install.packages('shiny')"

ENTRYPOINT ["Rscript", "entrypoint.R"]