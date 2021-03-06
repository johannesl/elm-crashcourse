import Html exposing (..)
import Html.Events exposing (..)

model = 0
main = beginnerProgram { model = model, update = update, view = view }

update msg model =
  if model < 4 then
    model + msg
  else
    model * 2

view model =
  h1 [ onClick 1 ] [ text ("Hello! " ++ toString(model)) ]
