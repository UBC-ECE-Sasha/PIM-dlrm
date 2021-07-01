
NUM_ROWS=1200
TABLES=$NUM_ROWS
for i in {1..12}
do 
    TABLES=$TABLES"-"$NUM_ROWS 
done


#NOTE: --mini-batch-size cannot be changed since 32 is the size that the deeprecsys requests produce

python dlrm_s_pytorch.py     \
--mini-batch-size=32     \
--num-batches=10     \
--data-generation=random     \
--arch-mlp-bot=800-1024-1024-1024-64    \
--arch-mlp-top=1024-1024-1024-1024-1     \
--arch-sparse-feature-size=64    \
--arch-embedding-size=$TABLES \
--num-indices-per-lookup=10    \
--num-indices-per-lookup-fixed=True   \
--print-freq=1    \
--print-time  \
--deeprecsys-load-gen=True
