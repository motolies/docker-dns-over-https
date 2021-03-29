FROM alpine:latest

RUN apk add --update curl wget perl perl-dev alpine-sdk perl-libwww perl-params-util perl-module-build perl-lwp-protocol-https
RUN curl -L https://cpanmin.us | perl - App::cpanminus

RUN cpanm --sudo --mirror Net::DNS::Nameserver
RUN cpanm --sudo --mirror WWW::Mechanize
RUN cpanm --sudo --mirror JSON::XS

COPY entrypoint.pl /

ENTRYPOINT ["/entrypoint.pl"]

EXPOSE 8053 8053/udp
