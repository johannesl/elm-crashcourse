import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

model = []
main = beginnerProgram { model = model, view = view, update = update }

update msg model =
  let
    nextNumber = (List.length model) + 1
    isPrime = List.member nextNumber [1,2,3,5,7,11,13,17,19,23]
    correctAnswer = msg == isPrime
  in
    case correctAnswer of
      True ->
        model ++ [ True ]
      False ->
        model ++ [ False ]

choice msg title =
  button
    [ onClick msg, style
      [ ("color","#FFF")
      , ("border","none")
      , ("margin","5px")
      , ("font-size","32px")
      , case msg of
        True ->
          ("background-color", "#0A0")
        False ->
          ("background-color", "#C00")
      ]
    ]
    [ text title ]

view model =
  div []
    [ choice True "Is prime! :-)"
    , choice False "Not a prime!"
    ]
