#!/usr/bin/env bash
grep ^H ./tmp/gen.out | python sort.py
