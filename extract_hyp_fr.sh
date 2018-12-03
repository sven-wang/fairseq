#!/usr/bin/env bash

SCRIPTS=example/translation/mosesdecoder/scripts
DETOKENIZER=$SCRIPTS/tokenizer/detokenizer.perl
lang=en

grep ^H ./tmp/gen.out | python sort.py | perl DETOKENIZER -l $lang
