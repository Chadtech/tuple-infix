# Tuple-Infix

I use these two infix functions in every project of mine: `&` and `:=`. They both tuple, but I use them differently. `&` is used just two tuple to random things, like at the end of an update function (`model & Cmd.none`). `:=` I use whenever the tuple is being used to "define" the left value as the right, as I do in inline styles and json encoding (`"left" = "16px"` or `"type" := Encode.string type_`)


