# Tuple-Infix  (&, :=)


In nearly all of my Elm projects, I use these two infix functions: `&` and `:=`. They both tuple, but I use them differently. `&` is used just to tuple two random things, like at the end of an update function.

```elm
  Noop ->
    model & Cmd.none
```
`:=` I use whenever the tuple is being used to "define" the left value as the right, as I do in inline styles and json encoding (`"left" = "16px"` or `"type" := Encode.string type_`)

```elm
  div
    [ style [ "left" := "40px" ] ]
    []

packJsMsg : String -> Encode.Value -> Encode.Value
packJsMsg type_ payload =
  [ "type" := Encode.string type_
  , "payload" := payload
  ]
    |> Encode.object
```


