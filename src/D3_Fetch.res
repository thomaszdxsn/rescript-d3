type blob
type arrayBuffer

@val
external makeBlob: unit => blob = "Blob"

@val
external makeArrayBuffer: unit => arrayBuffer = "ArrayBuffer"

@module("d3")
external blob: string => Js.Promise.t<blob> = "blob"

@module("d3")
external arrayBuffer: string => Js.Promise.t<arrayBuffer> = "arrayBuffer"

@module("d3")
external csv: string => Js.Promise.t<array<'a>> = "csv"

@module("d3")
external dsv: string => Js.Promise.t<array<'a>> = "dsv"

@module("d3")
external tsv: string => Js.Promise.t<array<'a>> = "tsv"

@module("d3")
external html: string => Js.Promise.t<Dom.document> = "html"

@module("d3")
external image: string => Js.Promise.t<Dom.htmlImageElement> = "image"

@module("d3")
external json: string => Js.Promise.t<'a> = "json"

@module("d3")
external svg: string => Js.Promise.t<Dom.document> = "svg"

@module("d3")
external text: string => Js.Promise.t<string> = "text"

@module("d3")
external xml: string => Js.Promise.t<Dom.xmlDocument> = "xml"
