sp <- "Species name extra stuff"

get_species_name <- function(species){
    spsp <- strsplit(species, "");
    spaces <- which(spsp[[1]] == " ")
    correct <- spsp[[1]][1:(spaces[2]-1)]
    paste0(correct)
    newname <- paste(correct, collapse = "");
    return(newname);
}
