module Dom_html = struct
  open Js_of_ocaml.Dom_html
  open Js_of_ocaml.Js

  (* Required for wasm_of_ocaml on pointerEvents
     https://github.com/ocaml-wasm/wasm_of_ocaml/issues/105 *)
  class type mouseEvent = object
    inherit event
    method relatedTarget : element t opt optdef readonly_prop
    method clientX : number_t readonly_prop
    method clientY : number_t readonly_prop
    method screenX : number_t readonly_prop
    method screenY : number_t readonly_prop
    method offsetX : number_t readonly_prop
    method offsetY : number_t readonly_prop
    method ctrlKey : bool t readonly_prop
    method shiftKey : bool t readonly_prop
    method altKey : bool t readonly_prop
    method metaKey : bool t readonly_prop
    method button : int readonly_prop
    method which : mouse_button optdef readonly_prop
    method fromElement : element t opt optdef readonly_prop
    method toElement : element t opt optdef readonly_prop
    method pageX : number_t optdef readonly_prop
    method pageY : number_t optdef readonly_prop
  end

  class type pointerEvent = object
    inherit mouseEvent
    method pointerId : int readonly_prop
    method width : number_t readonly_prop
    method height : number_t readonly_prop
    method pressure : number_t readonly_prop
    method tangentialPressure : number_t readonly_prop
    method tiltX : int readonly_prop
    method tiltY : int readonly_prop
    method twist : int readonly_prop
    method pointerType : js_string t readonly_prop
    method isPrimary : bool t readonly_prop
  end

  (* No js_of_ocaml PR yet. *)
  class type wheelEvent = object
    inherit mouseEvent
    method deltaX : number t readonly_prop
    method deltaY : number t readonly_prop
    method deltaZ : number t readonly_prop
    method deltaMode : int readonly_prop
  end
end
