module View exposing (view)

import Color.OneDark as OneDark
import Element
    exposing
        ( centerX
        , centerY
        , column
        , el
        , fill
        , focused
        , layout
        , mouseOver
        , padding
        , text
        , width
        )
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Html exposing (Html)
import Model exposing (Model)
import Msg exposing (Msg(..))


view : Model -> Html Msg
view model =
    layout [ Background.color OneDark.black, Font.bold, Font.size 32 ] <|
        column
            [ centerX, centerY, width fill ]
            [ Input.text
                [ Background.color OneDark.white
                , Font.color OneDark.darkRed
                , Border.rounded 5
                , width fill
                ]
                { onChange = OnChange
                , text = model
                , placeholder = Nothing

                -- , placeholder =
                --     Just <|
                --         Input.placeholder [ Font.color OneDark.commentGrey ] <|
                --             text "http://remote-file-origin"
                , label = Input.labelLeft [] <| text ""
                }
            , el
                [ padding 10
                , centerX
                , centerY
                ]
              <|
                Input.button
                    [ Font.color OneDark.blue
                    , padding
                        5
                    , focused
                        [ Background.color OneDark.black ]
                    , mouseOver [ Font.color OneDark.green ]
                    ]
                    { onPress = Nothing, label = text "Transfer" }
            ]
