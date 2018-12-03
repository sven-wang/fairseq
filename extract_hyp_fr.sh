#!/usr/bin/env bash

SCRIPTS=examples/translation/mosesdecoder/scripts
DETOKENIZER=$SCRIPTS/tokenizer/detokenizer.perl
lang=fr

grep ^H ./tmp/gen.out | python sort.py | perl DETOKENIZER -l $lang
