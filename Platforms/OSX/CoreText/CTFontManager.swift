
@available(OSX 10.6, *)
func CTFontManagerCopyAvailablePostScriptNames() -> CFArray
@available(OSX 10.6, *)
func CTFontManagerCopyAvailableFontFamilyNames() -> CFArray
@available(OSX 10.6, *)
func CTFontManagerCopyAvailableFontURLs() -> CFArray
@available(OSX 10.6, *)
func CTFontManagerCompareFontFamilyNames(family1: UnsafePointer<Void>, _ family2: UnsafePointer<Void>, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
@available(OSX 10.6, *)
func CTFontManagerCreateFontDescriptorsFromURL(fileURL: CFURL) -> CFArray?
@available(OSX 10.7, *)
func CTFontManagerCreateFontDescriptorFromData(data: CFData) -> CTFontDescriptor?
enum CTFontManagerScope : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case process
  case user
  case session
}
@available(OSX 10.6, *)
func CTFontManagerRegisterFontsForURL(fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.6, *)
func CTFontManagerUnregisterFontsForURL(fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.8, *)
func CTFontManagerRegisterGraphicsFont(font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.8, *)
func CTFontManagerUnregisterGraphicsFont(font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.6, *)
func CTFontManagerRegisterFontsForURLs(fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool
@available(OSX 10.6, *)
func CTFontManagerUnregisterFontsForURLs(fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool
@available(OSX 10.6, *)
func CTFontManagerEnableFontDescriptors(descriptors: CFArray, _ enable: Bool)
@available(OSX 10.6, *)
func CTFontManagerGetScopeForURL(fontURL: CFURL) -> CTFontManagerScope
@available(OSX 10.6, *)
func CTFontManagerIsSupportedFont(fontURL: CFURL) -> Bool
@available(OSX 10.6, *)
func CTFontManagerCreateFontRequestRunLoopSource(sourceOrder: CFIndex, _ createMatchesCallback: (CFDictionary, pid_t) -> Unmanaged<CFArray>) -> CFRunLoopSource?
@available(OSX 10.6, *)
let kCTFontManagerBundleIdentifier: CFString
enum CTFontManagerAutoActivationSetting : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case `default`
  case disabled
  case enabled
  case promptUser
}
@available(OSX 10.6, *)
func CTFontManagerSetAutoActivationSetting(bundleIdentifier: CFString?, _ setting: CTFontManagerAutoActivationSetting)
@available(OSX 10.6, *)
func CTFontManagerGetAutoActivationSetting(bundleIdentifier: CFString?) -> CTFontManagerAutoActivationSetting
@available(OSX 10.6, *)
let kCTFontManagerRegisteredFontsChangedNotification: CFString
