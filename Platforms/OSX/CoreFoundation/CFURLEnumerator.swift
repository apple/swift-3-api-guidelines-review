
var __COREFOUNDATION_CFURLENUMERATOR__: Int32 { get }
class CFURLEnumerator {
}
@available(*, deprecated, renamed="CFURLEnumerator")
typealias CFURLEnumeratorRef = CFURLEnumerator
@available(OSX 10.6, *)
func CFURLEnumeratorGetTypeID() -> CFTypeID
struct CFURLEnumeratorOptions : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var DefaultBehavior: CFURLEnumeratorOptions { get }
  static var DescendRecursively: CFURLEnumeratorOptions { get }
  static var SkipInvisibles: CFURLEnumeratorOptions { get }
  static var GenerateFileReferenceURLs: CFURLEnumeratorOptions { get }
  static var SkipPackageContents: CFURLEnumeratorOptions { get }
  static var IncludeDirectoriesPreOrder: CFURLEnumeratorOptions { get }
  static var IncludeDirectoriesPostOrder: CFURLEnumeratorOptions { get }
}
@available(OSX 10.6, *)
func CFURLEnumeratorCreateForDirectoryURL(_ alloc: CFAllocator!, _ directoryURL: CFURL!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
@available(OSX 10.6, *)
func CFURLEnumeratorCreateForMountedVolumes(_ alloc: CFAllocator!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
enum CFURLEnumeratorResult : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Success
  case End
  case Error
  case DirectoryPostOrderSuccess
}
@available(OSX 10.6, *)
func CFURLEnumeratorGetNextURL(_ enumerator: CFURLEnumerator!, _ url: UnsafeMutablePointer<Unmanaged<CFURL>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFURLEnumeratorResult
@available(OSX 10.6, *)
func CFURLEnumeratorSkipDescendents(_ enumerator: CFURLEnumerator!)
@available(OSX 10.6, *)
func CFURLEnumeratorGetDescendentLevel(_ enumerator: CFURLEnumerator!) -> CFIndex
