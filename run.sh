#!/usr/bin/env bash

install() {
    poetry install
}

dev() {
    poetry run streamlit run babyagi.py
}

prod() {
    nohup poetry run streamlit run babyagi.py --server.headless true
}

case ${1:-install} in
    install) install ;;
    dev) dev ;;
    prod) prod ;;
    *) echo "$0: No command named '$1'" ;;
esac
