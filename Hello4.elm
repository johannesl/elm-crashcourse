import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

primes = [1,2,3,5,7,11,13,17,19,23]
model = []
main = beginnerProgram { model = model, view = view, update = update }

update msg model =
  let
    nextNumber = (List.length model) + 1
    isPrime = List.member nextNumber primes
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
    [ choice True "Prime! :-)"
    , choice False "Not a prime!"
    , render model
    ]

render model =
  let
    nextNumber = List.length model + 1
    answerView happy =
      case happy of
        True ->
          img [ style [("height","64px")], src "happy-cc0.jpg" ] []
        False ->
          img [ style [("height","16px")], src "happy-cc0.jpg" ] []
  in
    div []
      [ div [] (List.map answerView model)
      , h1 [] [ text ("Is " ++ (toString nextNumber) ++ " a prime?") ]
      ]
