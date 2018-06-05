import Html exposing (beginnerProgram, div, button, text)
import Html.Events exposing (onClick)

type alias Model = Int

main =
    beginnerProgram
      { model = 0
      , view = view
      , update = update
      }


view : Model -> Html.Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]


type Msg = Increment | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

