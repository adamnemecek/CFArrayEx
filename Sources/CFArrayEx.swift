import CoreFoundation


public struct CFArrayEx<Element> : RandomAccessCollection {

    public typealias Index = Int

    private let ref : CFArray

    public init(ref: CFArray) {
        self.ref = ref
    }

    public var startIndex : Index {
        return 0
    }

    public var count : Index.Stride {
        return CFArrayGetCount(ref)
    }

    public var endIndex: Index {
        return count
    }

    public subscript(index: Index) -> Element {
        return unsafeBitCast(CFArrayGetValueAtIndex(ref, index), to: Element.self)
    }

    public func index(after i: Index) -> Index {
        return i + 1
    }

    public func index(before i: Index) -> Index {
        return i - 1
    }
}
