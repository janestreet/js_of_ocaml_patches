module Dom_html : sig
  open Js_of_ocaml.Dom_html
  open Js_of_ocaml.Js

  class type wheelEvent = object
    inherit mouseEvent
    method deltaX : number t readonly_prop
    method deltaY : number t readonly_prop
    method deltaZ : number t readonly_prop
    method deltaMode : int readonly_prop
  end
end
