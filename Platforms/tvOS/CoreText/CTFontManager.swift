
@available(tvOS 7.0, *)
func CTFontManagerCreateFontDescriptorsFromURL(fileURL: CFURL) -> CFArray?
@available(tvOS 7.0, *)
func CTFontManagerCreateFontDescriptorFromData(data: CFData) -> CTFontDescriptor?
enum CTFontManagerScope : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case process
  case user
  case session
}
@available(tvOS 4.1, *)
func CTFontManagerRegisterFontsForURL(fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 4.1, *)
func CTFontManagerUnregisterFontsForURL(fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 4.1, *)
func CTFontManagerRegisterGraphicsFont(font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 4.1, *)
func CTFontManagerUnregisterGraphicsFont(font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 4.1, *)
func CTFontManagerRegisterFontsForURLs(fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool
@available(tvOS 4.1, *)
func CTFontManagerUnregisterFontsForURLs(fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool
enum CTFontManagerAutoActivationSetting : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case `default`
  case disabled
  case enabled
  case promptUser
}
@available(tvOS 7.0, *)
let kCTFontManagerRegisteredFontsChangedNotification: CFString
