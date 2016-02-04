
var __COREFOUNDATION_CFURLENUMERATOR__: Int32 { get }
class CFURLEnumerator {
}
@available(*, deprecated, renamed="CFURLEnumerator")
typealias CFURLEnumeratorRef = CFURLEnumerator
@available(tvOS 4.0, *)
func CFURLEnumeratorGetTypeID() -> CFTypeID
struct CFURLEnumeratorOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var DefaultBehavior: CFURLEnumeratorOptions { get }
  static var DescendRecursively: CFURLEnumeratorOptions { get }
  static var SkipInvisibles: CFURLEnumeratorOptions { get }
  static var GenerateFileReferenceURLs: CFURLEnumeratorOptions { get }
  static var SkipPackageContents: CFURLEnumeratorOptions { get }
  static var IncludeDirectoriesPreOrder: CFURLEnumeratorOptions { get }
  static var IncludeDirectoriesPostOrder: CFURLEnumeratorOptions { get }
}
@available(tvOS 4.0, *)
func CFURLEnumeratorCreateForDirectoryURL(alloc: CFAllocator!, _ directoryURL: CFURL!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
@available(tvOS 4.0, *)
func CFURLEnumeratorCreateForMountedVolumes(alloc: CFAllocator!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
enum CFURLEnumeratorResult : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Success
  case End
  case Error
  case DirectoryPostOrderSuccess
}
@available(tvOS 4.0, *)
func CFURLEnumeratorGetNextURL(enumerator: CFURLEnumerator!, _ url: UnsafeMutablePointer<Unmanaged<CFURL>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFURLEnumeratorResult
@available(tvOS 4.0, *)
func CFURLEnumeratorSkipDescendents(enumerator: CFURLEnumerator!)
@available(tvOS 4.0, *)
func CFURLEnumeratorGetDescendentLevel(enumerator: CFURLEnumerator!) -> CFIndex
