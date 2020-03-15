module Main exposing (main)

import Browser
import Html exposing (Html, text)
import Model exposing (Model)
import Msg exposing (Msg(..))
import View exposing (view)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


init : () -> ( Model, Cmd Msg )
init _ =
    ( "Hello World", Cmd.none )


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
