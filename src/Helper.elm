module Helper exposing (..)

import Html



--adds two integers


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



--adds three integers


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3



--calculator exercise


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



--Record exercise 1


langs : List { name : String, releaseYear : Int, currentVersion : String }
langs =
    [ { name = "elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 0225"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list



--Record exercise 2


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
    ]


isStudent : User -> String
isStudent user =
    if user.uType == "Student" then
        user.name

    else
        ""


onlyStudents : List User -> List String
onlyStudents list =
    List.map isStudent list



--Record exercise 3


type alias Videogame =
    { title : String
    , releaseYear : Int
    , avaible : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , avaible = True
      , downloads = 50000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , avaible = True
      , downloads = 100000
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres genres =
    List.map .genres genres



--HTML exercise


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "8GB"
    , model = "M1"
    , brand = "Macbook Air"
    , screenSize = "2560 x 1600"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 []
            [ Html.text "My laptop"
            ]
        , Html.div []
            [ Html.ul []
                [ Html.li []
                    [ Html.text ("Ram: " ++ myLaptop.ram)
                    ]
                , Html.li []
                    [ Html.text ("Modelo: " ++ myLaptop.model)
                    ]
                , Html.li []
                    [ Html.text ("Marca: " ++ myLaptop.brand)
                    ]
                , Html.li []
                    [ Html.text ("Pulgadas: " ++ myLaptop.screenSize)
                    ]
                ]
            ]
        ]
