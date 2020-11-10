module Bob exposing (hey)


isYelling : String -> Bool
isYelling str =
    String.toUpper str == str && String.any Char.isAlpha str


isAQuestion : String -> Bool
isAQuestion str =
    str
        |> String.trim
        |> String.endsWith "?"


isYellingAQuestion : String -> Bool
isYellingAQuestion str =
    isYelling str && isAQuestion str


isSilence : String -> Bool
isSilence str =
    String.trim str == ""


hey : String -> String
hey remark =
    if isYellingAQuestion remark then
        "Calm down, I know what I'm doing!"

    else if isYelling remark then
        "Whoa, chill out!"

    else if isSilence remark then
        "Fine. Be that way!"

    else if isAQuestion remark then
        "Sure."

    else
        "Whatever."
