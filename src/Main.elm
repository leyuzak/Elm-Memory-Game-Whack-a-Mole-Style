module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Random
import Time


-- MODEL

type alias Model =
    { mole : Int      
    , score : Int
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { mole = 0, score = 0 }
    , Random.generate NewMole (Random.int 0 8)
    )


-- MSG

type Msg
    = Hit Int
    | NewMole Int
    | Tick


-- UPDATE

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Hit index ->
            if index == model.mole then
                ( { model | score = model.score + 1 }
                , Cmd.none
                )
            else
                ( model, Cmd.none )

        NewMole idx ->
            ( { model | mole = idx }
            , Cmd.none
            )

        Tick ->
            ( model
            , Random.generate NewMole (Random.int 0 8)
            )



-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Time.every 800 (\_ -> Tick)



-- VIEW

view : Model -> Html Msg
view model =
    div [ style "text-align" "center", style "margin-top" "40px" ]
        [ div [ style "font-size" "28px" ] [ text ("Score: " ++ String.fromInt model.score) ]
        , div [] (grid model)
        ]


grid : Model -> List (Html Msg)
grid model =
    let
        cell i =
            let
                isMole =
                    i == model.mole

                color =
                    if isMole then "gold" else "#444"
            in
            div
                [ style "width" "100px"
                , style "height" "100px"
                , style "background" color
                , style "margin" "10px"
                , style "border-radius" "12px"
                , style "cursor" "pointer"
                , onClick (Hit i)
                ]
                []
    in
    [ div [ style "display" "flex", style "justify-content" "center" ]
        [ cell 0, cell 1, cell 2 ]
    , div [ style "display" "flex", style "justify-content" "center" ]
        [ cell 3, cell 4, cell 5 ]
    , div [ style "display" "flex", style "justify-content" "center" ]
        [ cell 6, cell 7, cell 8 ]
    ]




-- MAIN

main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
