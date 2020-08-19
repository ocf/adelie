ARG adelie_version=main
FROM njha/adelie:${adelie_version}
COPY config.toml /adelie/config.toml
CMD python3 /adelie/src/main.py --config /adelie/config.toml
