module Tuple.Infix
    exposing
        ( (&)
        , (:=)
        )

{-| Helpers functions I like to use in my projects


# Infix functions

@docs (&), (:=)

-}


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


infixl 0 :=
