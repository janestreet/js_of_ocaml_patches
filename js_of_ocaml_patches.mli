module Dom_html : sig
  open Js_of_ocaml.Dom_html
  open Js_of_ocaml.Js

  (* https://developer.mozilla.org/en-US/docs/Web/API/Event/stopImmediatePropagation *)
  val stopImmediatePropagation : here:[%call_pos] -> #event t -> unit
end
