module GradeSchool exposing (addStudent, allStudents, empty, studentsInGrade)

import Dict exposing (Dict)


type alias Grade =
    Int


type alias Student =
    String


type alias School =
    Dict Grade (List Student)


empty : School
empty =
    Dict.empty


addStudent : Grade -> Student -> School -> School
addStudent grade student school =
    if Dict.member grade school then
        Dict.update grade (Maybe.map (\students -> student :: students)) school

    else
        Dict.insert grade [ student ] school


studentsInGrade : Grade -> School -> List Student
studentsInGrade grade school =
    Maybe.withDefault
        []
        (Dict.get grade school)
        |> List.sort


allStudents : School -> List ( Grade, List Student )
allStudents school =
    Dict.foldl
        (\key value acc ->
            let
                sortedValue =
                    List.sort value
            in
            ( key, sortedValue ) :: acc
        )
        []
        school
        |> List.sortBy Tuple.first
