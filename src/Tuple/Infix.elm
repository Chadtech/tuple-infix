module Tuple.Infix
    exposing
        ( (&)
        , (:=)
        , (|&)
        )

{-| Helpers functions I like to use in my projects


# Infix functions

@docs (&), (:=), (|&)

-}


{-| Sometimes `Msg` lead to complicated cmds, but not complicated model updates, and its hard to pipe stuff together when the second part of a tuple is complicated. `|&` tuples but it switches the elements.

    YahooDotCom
        |> Page.toUrl
        |> GoToPage
        |> Ports.send
        |& model

-}
(|&) : a -> b -> ( b, a )
(|&) a b =
    ( b, a )


{-| An infix function that tuples two elements, often used at the end of an update function

    model & cmd == (model, cmd)

-}
(&) : a -> b -> ( a, b )
(&) =
    (,)


{-| An infix function that tuples two elements, used to convey "defined as" like in inline styles and Json encoding

    [ "type" := Encode.string type_
    , "payload" := payload
    ]
        |> Encode.object

-}
(:=) : a -> b -> ( a, b )
(:=) =
    (,)


infixl 0 &


infixl 0 |&


infixl 0 :=
