# PokemonTypeR

PokemonTypeR gives you recommended types to use in battle based on your opponent's tpye or Pokemon, let's you check how rare a chosen type is,
and gives you example Pokemon for a chosen type. This is based on the open source data set published here: kaggle.com/datasets/rounakbanik/pokemon

The PokemonTypeR project consisted of several parts, which I've written up here: TBC

In part 1, I did the data exploration in Python, the Jupyter Notebook is saved in this repository. I checked the distribution of different main types,
secondary types, combinations of the two, total counts of types, capture rates by type, and which types a given type is strong, weak, neutral or resistant to
in either attack or defence. I ended up using three datasets from this: one with strength ratings (strong, weak etc) for each combination of types, one with the types of each Pokemon, and one with the share of Pokemon with a given type.

In part 2, I cleaned these three datasets in R using the tidyverse package, and then combined them into one big dataset. The R script is saved in this repository.

In part 3, I wrote four functions to create the recommendations I was looking for:
1. "type" to return a list of strong types based on the opponent's type (so types that are either strong in attack or strong in defence against that opponent's type)
2. "name" to return a list of strong types based on the opponent's Pokemon
3. "share" to return a percentage value showing what share of Pokemon have a given type
4. "example_P" to return 3 randomly chosen Pokemons with a given type

I saved these functions and the dataset in the package "PokemonTypeR", which is available for installation from this repository using install_github("SabrinaSchalz/PokemonTypeR", subdir="PokemonTypeR")

In part 4, I built a Shiny app to allow people to use PokemonTypeR in a browser without having R installed. You can find it here:
