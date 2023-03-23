module Dom_html : sig
  open Js_of_ocaml.Dom_html
  open Js_of_ocaml.Js

  class type wheelEvent = object
    inherit mouseEvent
    method deltaX : float readonly_prop
    method deltaY : float readonly_prop
    method deltaZ : float readonly_prop
    method deltaMode : int readonly_prop
  end
end
