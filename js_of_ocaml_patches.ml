module Dom_html = struct
  open Js_of_ocaml.Dom_html
  open Js_of_ocaml.Js

  (* No js_of_ocaml PR yet. *)
  class type wheelEvent = object
    inherit mouseEvent
    method deltaX : number t readonly_prop
    method deltaY : number t readonly_prop
    method deltaZ : number t readonly_prop
    method deltaMode : int readonly_prop
  end
end
