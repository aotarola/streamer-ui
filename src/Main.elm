module Main exposing (main)

import Browser
import Model exposing (Model)
import Msg exposing (Msg(..))
import View exposing (view)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg _ =
    case msg of
        OnChange str ->
            ( str, Cmd.none )


init : () -> ( Model, Cmd Msg )
init _ =
    ( "http://remote-file-origin", Cmd.none )


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
