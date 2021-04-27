FROM golang
COPY desafio.go .
RUN go build desafio.go

FROM scratch
COPY --from=0 /go/desafio .
CMD ["./desafio"]