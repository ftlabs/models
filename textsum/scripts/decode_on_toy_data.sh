#!/bin/bash
# borrowed from https://github.com/tensorflow/models/issues/346

 DATA_FILE=textsum/data/data
VOCAB_FILE=textsum/data/vocab
  LOG_ROOT=log_root
      MODE=decode

bazel-bin/textsum/seq2seq_attention \
        --mode=$MODE \
 --article_key=article \
--abstract_key=abstract \
   --data_path=$DATA_FILE \
  --vocab_path=$VOCAB_FILE \
    --log_root=$LOG_ROOT \
 --${MODE}_dir=$LOG_ROOT/$MODE \
   --beam_size=8
