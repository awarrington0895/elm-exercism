module RNATranscription exposing (toRNA)

import Dict exposing (Dict)

rnaMap : Dict String String
rnaMap = Dict.fromList
    [ ( "C", "G" )
    , ( "G", "C" )
    , ( "T", "A" )
    , ( "A", "U" )
    ]


isNothing : Maybe String -> Bool
isNothing result =
    case result of
        Nothing ->
            True

        _ ->
            False

strToRNA : String -> List (Maybe String)
strToRNA str =
    str 
        |> String.split ""
        |> List.map (\dna -> Dict.get dna rnaMap)

toRNA : String -> Result String String
toRNA dna =
    case Dict.get dna rnaMap of
        Nothing ->
            Err "Not a valid DNA sequence."

        Just rna ->
            Ok rna

        
