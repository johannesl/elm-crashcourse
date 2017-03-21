import Html exposing (h1, div, p, text, img)
import Html.Attributes exposing (style, src)

headline title =
  h1 [ style [("color","#FF0000"),("font-family","Verdana")] ] [ text title ]

paragraph children =
  p [ style [("font-size","24px")] ] children

main =
  div []
    [ headline "Hello from Elm!"
    , paragraph
      [ text "The elm reactor is happy to be on stage! "
      , img [ src "happy-cc0.jpg", style [("height","48px")] ] []
      ]
    , headline "What should we build next?"
    , paragraph [ text "Maybe some kind of game? I like games!" ]
    ]
