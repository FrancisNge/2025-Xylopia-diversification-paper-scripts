
#load Panda to run ClaDS in Julia
using PANDA

# Change the current working directory
println(pwd())

my_tree = load_tree("Xylopia.beast.tree")

output = infer_ClaDS(my_tree, 10_000, f=0.8704663, print_state = 100, n_chains = 3)
using JLD2
@save "./output_Xylopia" output

save_ClaDS_in_R(output, ClaDS-Xylopia.Rdata")

