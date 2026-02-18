module Helper exposing (..)

import Char
import Html exposing (..)
import Html.Attributes exposing (..)
import List



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"


main : Html msg
main =
    div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]


headers : String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]


hyperlink : String -> String -> Html msg
hyperlink url text =
    a [ href url ] [ Html.text text ]



-----------------------------------------------------------------


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars chars =
    List.map Char.isUpper chars


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars chars evaluator =
    List.map evaluator chars
