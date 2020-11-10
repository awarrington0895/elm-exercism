module Nucleotide exposing (Nucleotide, complement, fromChar, toChar)


type Nucleotide
    = C
    | G
    | T
    | A
    | U


complement : Nucleotide -> Maybe Nucleotide
complement n =
    case n of
        C ->
            Just G

        G ->
            Just C

        T ->
            Just A

        A ->
            Just U

        U ->
            Nothing


fromChar : Char -> Maybe Nucleotide
fromChar c =
    case c of
        'C' ->
            Just C

        'G' ->
            Just G

        'T' ->
            Just T

        'A' ->
            Just A

        'U' ->
            Just U

        _ ->
            Nothing


toChar : Nucleotide -> Char
toChar n =
    case n of
        C ->
            'C'

        G ->
            'G'

        T ->
            'T'

        A ->
            'A'

        U ->
            'U'
