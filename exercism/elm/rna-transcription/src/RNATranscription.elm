module RNATranscription exposing (toRNA)



toRNA : String -> Result String String
toRNA dna =
    if dna == "C" then
        Ok "G"

    else if dna == "G" then
        Ok "C"

    else if dna == "T" then
        Ok "A"

    else if dna == "A" then
        Ok "U"

    else
        Err "Not a valid DNA sequence"