
typealias SecRandomRef = COpaquePointer
@available(watchOS 2.0, *)
let kSecRandomDefault: SecRandomRef
@available(watchOS 2.0, *)
func SecRandomCopyBytes(_ rnd: SecRandomRef, _ count: Int, _ bytes: UnsafeMutablePointer<UInt8>) -> Int32
