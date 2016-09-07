#!/bin/bash
# borrowed from https://github.com/tensorflow/models/issues/346

 DATA_FILE=textsum/data/data
VOCAB_FILE=textsum/data/vocab
  LOG_ROOT=log_root

# bazel-bin/textsum/seq2seq_attention \
#         --mode=train \
#  --article_key=article \
# --abstract_key=abstract \
#    --data_path=$DATA_FILE \
#   --vocab_path=$VOCAB_FILE \
#     --log_root=$LOG_ROOT \
#    --train_dir=$LOG_ROOT/train

bazel-bin/textsum/seq2seq_attention \
        --mode=decode \
 --article_key=article \
--abstract_key=abstract \
   --data_path=$DATA_FILE \
  --vocab_path=$VOCAB_FILE \
    --log_root=$LOG_ROOT \
  --decode_dir=$LOG_ROOT/decode \
   --beam_size=8
