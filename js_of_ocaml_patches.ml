module Dom_html = struct
  open Js_of_ocaml.Js

  let stopImmediatePropagation ~(here : [%call_pos]) ev =
    let e = Unsafe.coerce ev in
    Optdef.case
      e##.stopImmediatePropagation
      (fun () ->
        Printf.eprintf
          "[stopImmediatePropagation] called at %s:%d:%d on an event that does not have \
           that function"
          here.Lexing.pos_fname
          here.Lexing.pos_lnum
          (here.Lexing.pos_cnum - here.Lexing.pos_bol))
      (fun _ -> e##_stopImmediatePropagation)
  ;;
end
