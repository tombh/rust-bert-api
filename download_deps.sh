#!/bin/sh

# These are usually downloaded automatically when rust-bert/tch is first
# run, but because of actix's nature (I think its async functions) an error
# is thrown when these deps are downloaded during runtime.

hugging_base=https://cdn.huggingface.co/distilbert-base-uncased-finetuned-sst-2-english-
cache_path=$HOME/.cache/.rustbert/distilbert-sst2

mkdir -p $cache_path
curl ${hugging_base}config.json > $cache_path/config.json
curl ${hugging_base}vocab.txt > $cache_path/vocab.txt
curl ${hugging_base}rust_model.ot > $cache_path/model.ot
