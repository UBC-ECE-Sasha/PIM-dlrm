#!/bin/bash
#NOTE: --mini-batch-size cannot be changed since 32 is the size that the deeprecsys requests produce

#RMC2
python3 dlrm_s_pytorch.py     \
--mini-batch-size=32     \
--num-batches=10     \
--data-generation=random     \
--arch-mlp-bot=256-128-64    \
--arch-mlp-top=128-64-1     \
--arch-embedding-size=500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000   \
--arch-sparse-feature-size=64    \
--num-indices-per-lookup-fixed=true     \
--num-indices-per-lookup=120   \
--arch-interaction-op=cat   \
--print-freq=1    \
--print-time    \
--deeprecsys_load_gen    \
--inference-only     \

#RMC1
: '
python3 dlrm_s_pytorch.py     \
--mini-batch-size=32     \
--num-batches=10     \
--data-generation=random     \
--arch-mlp-bot=128-64-32    \
--arch-mlp-top=256-64-1     \
--arch-embedding-size=4000000-4000000-4000000-4000000-4000000-4000000-4000000-4000000   \
--arch-sparse-feature-size=32    \
--num-indices-per-lookup-fixed=true     \
--num-indices-per-lookup=80     \
--arch-interaction-op=cat   \
--print-freq=1    \
--print-time    \
--deeprecsys_load_gen    \
--inference-only     \ 
'


#RMC3
: '
python3 dlrm_s_pytorch.py     \
--mini-batch-size=32     \
--num-batches=10     \
--data-generation=random     \
--arch-mlp-bot=2560-1024-256-32     \
--arch-mlp-top=512-256-1    \
--arch-embedding-size=2000000-2000000-2000000-2000000-2000000-2000000-2000000-2000000-2000000-2000000    \
--arch-sparse-feature-size=32   \
--num-indices-per-lookup-fixed=true     \
--num-indices-per-lookup=20     \
--arch-interaction-op=cat   \
--print-freq=1    \
--print-time    \
--deeprecsys_load_gen    \
--inference-only     \
'
