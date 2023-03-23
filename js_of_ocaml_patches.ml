module Dom_html = struct
  open Js_of_ocaml.Dom_html
  open Js_of_ocaml.Js

  (* No js_of_ocaml PR yet. *)
  class type wheelEvent = object
    inherit mouseEvent
    method deltaX : float readonly_prop
    method deltaY : float readonly_prop
    method deltaZ : float readonly_prop
    method deltaMode : int readonly_prop
  end
end
