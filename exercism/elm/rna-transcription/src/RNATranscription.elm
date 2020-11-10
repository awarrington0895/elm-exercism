module RNATranscription exposing (toRNA)

import Nucleotide exposing (Nucleotide)


combine : List (Maybe a) -> Maybe (List a)
combine =
    List.foldr (Maybe.map2 (::)) (Just [])


toRNA : String -> Result String String
toRNA dna =
    dna
        |> String.toList
        |> List.map Nucleotide.fromChar
        |> List.map (Maybe.andThen Nucleotide.complement)
        |> List.map (Maybe.map Nucleotide.toChar)
        |> combine
        |> Maybe.map String.fromList
        |> Result.fromMaybe "Not a valid Nucleotide"
