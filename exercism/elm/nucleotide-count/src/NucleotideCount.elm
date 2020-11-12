module NucleotideCount exposing (nucleotideCounts)


type alias NucleotideCounts =
    { a : Int
    , t : Int
    , c : Int
    , g : Int
    }


emptyNucleotideCounts : NucleotideCounts
emptyNucleotideCounts =
    { a = 0
    , t = 0
    , c = 0
    , g = 0
    }


countNucleotides : List String -> NucleotideCounts
countNucleotides nucleotides =
    List.foldl
        (\nucleotide acc ->
            case nucleotide of
                "A" ->
                    { acc | a = acc.a + 1 }

                "T" ->
                    { acc | t = acc.t + 1 }

                "C" ->
                    { acc | c = acc.c + 1 }

                "G" ->
                    { acc | g = acc.g + 1 }

                _ ->
                    acc
        )
        emptyNucleotideCounts
        nucleotides


nucleotideCounts : String -> NucleotideCounts
nucleotideCounts sequence =
    sequence
        |> String.split ""
        |> countNucleotides
