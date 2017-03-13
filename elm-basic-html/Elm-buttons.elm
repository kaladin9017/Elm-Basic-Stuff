import Html exposing (..)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- Model

type alias Model = Int

model : Model
model =
  0

-- UPDATE
type Msg =
  Increment |
  Decrement |
  Reset

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Reset ->
      0


-- VIEW

view : Model -> Html Msg
view model =
  div []
  [ button [ onClick Decrement ] [ text "-" ]
  , div [] [ text (toString model) ]
  , button [ onClick Increment ] [ text "+" ]
  , br [] []
  , button [ onClick Reset ] [ text "Reset" ]
  ]
