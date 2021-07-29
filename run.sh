
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

#RMC1
: ' 
--arch_mlp_bot=128-64-32    \
--arch_mlp_top=256-64-1     \
--arch_embedding_size=4000000-4000000-4000000-4000000-4000000-4000000-4000000-4000000   \
--arch_sparse_feature_size=32    \
--num_indices_per_lookup_fixed=true     \
--num_indices_per_lookup=80     \
--arch_interaction_op=cat   \
--model_type=dlrm   \
--model_name=rm1    \
'

#RMC2
--arch_mlp_bot=256-128-64    \
--arch_mlp_top=128-64-1     \ 
--arch_embedding_size=500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000-500000   \
--arch_sparse_feature_size=64    \
--num_indices_per_lookup_fixed=true     \
--num_indices_per_lookup=120   \
--arch_interaction_op=cat   \
--model_type=dlrm   \
--model_name=rm2    \

#RMC3
: '
--arch_mlp_bot=2560-1024-256-32     \
--arch_mlp_top=512-256-1    \
--arch_embedding_size=2000000-2000000-2000000-2000000-2000000-2000000-2000000-2000000-2000000-2000000    \
--arch_sparse_feature_size=32   \
--num_indices_per_lookup_fixed=true     \
--num_indices_per_lookup=20     \
--arch_interaction_op=cat   \
--model_type=dlrm   \
--model_name=rm3    \
'

--print-freq=1    \
--print-time  \
--deeprecsys_load_gen \
