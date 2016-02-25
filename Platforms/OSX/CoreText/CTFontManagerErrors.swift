
@available(OSX 10.6, *)
let kCTFontManagerErrorDomain: CFString
@available(OSX 10.6, *)
let kCTFontManagerErrorFontURLsKey: CFString
enum CTFontManagerError : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case FileNotFound
  case InsufficientPermissions
  case UnrecognizedFormat
  case InvalidFontData
  case AlreadyRegistered
  case NotRegistered
  case InUse
  case SystemRequired
}
