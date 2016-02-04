
typealias SecRandomRef = COpaquePointer
@available(iOS 2.0, *)
let kSecRandomDefault: SecRandomRef
@available(iOS 2.0, *)
func SecRandomCopyBytes(rnd: SecRandomRef, _ count: Int, _ bytes: UnsafeMutablePointer<UInt8>) -> Int32
