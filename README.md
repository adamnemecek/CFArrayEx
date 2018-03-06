# CFArrayEx
Swift wrapper around CFArray.

struct CFArrayEx<Element>: MutableCollection {
  init(ref: CFRef)
  var startIndex: Int { get }
  var endIndex: Int { get }
  var count: Int { get }
  subscript(index: Int) -> Element { get set }
}
