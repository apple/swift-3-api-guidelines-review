
struct NSWorkspaceLaunchOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var andPrint: NSWorkspaceLaunchOptions { get }
  static var withErrorPresentation: NSWorkspaceLaunchOptions { get }
  static var inhibitingBackgroundOnly: NSWorkspaceLaunchOptions { get }
  static var withoutAddingToRecents: NSWorkspaceLaunchOptions { get }
  static var withoutActivation: NSWorkspaceLaunchOptions { get }
  static var async: NSWorkspaceLaunchOptions { get }
  static var newInstance: NSWorkspaceLaunchOptions { get }
  static var andHide: NSWorkspaceLaunchOptions { get }
  static var andHideOthers: NSWorkspaceLaunchOptions { get }
  static var `default`: NSWorkspaceLaunchOptions { get }
  @available(OSX, introduced=10.3, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var allowingClassicStartup: NSWorkspaceLaunchOptions { get }
  @available(OSX, introduced=10.3, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var preferringClassic: NSWorkspaceLaunchOptions { get }
}
struct NSWorkspaceIconCreationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var excludeQuickDrawElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
  static var exclude10_4ElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
}
class NSWorkspace : NSObject {
  class func shared() -> NSWorkspace
  var notificationCenter: NSNotificationCenter { get }
  func openFile(_ fullPath: String) -> Bool
  func openFile(_ fullPath: String, withApplication appName: String?) -> Bool
  func openFile(_ fullPath: String, withApplication appName: String?, andDeactivate flag: Bool) -> Bool
  func open(_ url: NSURL) -> Bool
  func launchApplication(_ appName: String) -> Bool
  @available(OSX 10.6, *)
  func launchApplication(at url: NSURL, options options: NSWorkspaceLaunchOptions = [], configuration configuration: [String : AnyObject]) throws -> NSRunningApplication
  @available(OSX 10.10, *)
  func open(_ url: NSURL, options options: NSWorkspaceLaunchOptions = [], configuration configuration: [String : AnyObject]) throws -> NSRunningApplication
  @available(OSX 10.10, *)
  func open(_ urls: [NSURL], withApplicationAt applicationURL: NSURL, options options: NSWorkspaceLaunchOptions = [], configuration configuration: [String : AnyObject]) throws -> NSRunningApplication
  func launchApplication(_ appName: String, showIcon showIcon: Bool, autolaunch autolaunch: Bool) -> Bool
  func fullPath(forApplication appName: String) -> String?
  func selectFile(_ fullPath: String?, inFileViewerRootedAtPath rootFullPath: String) -> Bool
  @available(OSX 10.6, *)
  func activateFileViewerSelecting(_ fileURLs: [NSURL])
  @available(OSX 10.6, *)
  func showSearchResults(forQueryString queryString: String) -> Bool
  func noteFileSystemChanged(_ path: String)
  func getInfoForFile(_ fullPath: String, application appName: AutoreleasingUnsafeMutablePointer<NSString?>, type type: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isFilePackage(atPath fullPath: String) -> Bool
  func icon(forFile fullPath: String) -> NSImage
  func icon(forFiles fullPaths: [String]) -> NSImage?
  func icon(forFileType fileType: String) -> NSImage
  func setIcon(_ image: NSImage?, forFile fullPath: String, options options: NSWorkspaceIconCreationOptions = []) -> Bool
  @available(OSX 10.6, *)
  var fileLabels: [String] { get }
  @available(OSX 10.6, *)
  var fileLabelColors: [NSColor] { get }
  @available(OSX 10.6, *)
  func recycle(_ URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)? = nil)
  @available(OSX 10.6, *)
  func duplicate(_ URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)? = nil)
  func getFileSystemInfo(forPath fullPath: String, isRemovable removableFlag: UnsafeMutablePointer<ObjCBool>, isWritable writableFlag: UnsafeMutablePointer<ObjCBool>, isUnmountable unmountableFlag: UnsafeMutablePointer<ObjCBool>, description description: AutoreleasingUnsafeMutablePointer<NSString?>, type fileSystemType: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func unmountAndEjectDevice(atPath path: String) -> Bool
  @available(OSX 10.6, *)
  func unmountAndEjectDevice(at url: NSURL) throws
  func extendPowerOff(by requested: Int) -> Int
  func hideOtherApplications()
  @available(OSX 10.6, *)
  func urlForApplication(withBundleIdentifier bundleIdentifier: String) -> NSURL?
  @available(OSX 10.6, *)
  func urlForApplication(toOpen url: NSURL) -> NSURL?
  func absolutePathForAppBundle(withIdentifier bundleIdentifier: String) -> String?
  func launchApp(withBundleIdentifier bundleIdentifier: String, options options: NSWorkspaceLaunchOptions = [], additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifier identifier: AutoreleasingUnsafeMutablePointer<NSNumber?>) -> Bool
  func open(_ urls: [NSURL], withAppBundleIdentifier bundleIdentifier: String?, options options: NSWorkspaceLaunchOptions = [], additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifiers identifiers: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  @available(OSX 10.7, *)
  var frontmostApplication: NSRunningApplication? { get }
  @available(OSX 10.7, *)
  var menuBarOwningApplication: NSRunningApplication? { get }
  @available(OSX 10.5, *)
  func type(ofFile absoluteFilePath: String) throws -> String
  @available(OSX 10.5, *)
  func localizedDescription(forType typeName: String) -> String?
  @available(OSX 10.5, *)
  func preferredFilenameExtension(forType typeName: String) -> String?
  @available(OSX 10.5, *)
  func filenameExtension(_ filenameExtension: String, isValidForType typeName: String) -> Bool
  @available(OSX 10.5, *)
  func type(_ firstTypeName: String, conformsToType secondTypeName: String) -> Bool
}
extension NSWorkspace {
  @available(OSX 10.6, *)
  func setDesktopImageURL(_ url: NSURL, for screen: NSScreen, options options: [String : AnyObject] = [:]) throws
  @available(OSX 10.6, *)
  func desktopImageURL(for screen: NSScreen) -> NSURL?
  @available(OSX 10.6, *)
  func desktopImageOptions(for screen: NSScreen) -> [String : AnyObject]?
}
@available(OSX 10.6, *)
let NSWorkspaceDesktopImageScalingKey: String
@available(OSX 10.6, *)
let NSWorkspaceDesktopImageAllowClippingKey: String
@available(OSX 10.6, *)
let NSWorkspaceDesktopImageFillColorKey: String
@available(OSX 10.6, *)
let NSWorkspaceApplicationKey: String
let NSWorkspaceWillLaunchApplicationNotification: String
let NSWorkspaceDidLaunchApplicationNotification: String
let NSWorkspaceDidTerminateApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidHideApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidUnhideApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidActivateApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidDeactivateApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceVolumeLocalizedNameKey: String
@available(OSX 10.6, *)
let NSWorkspaceVolumeURLKey: String
@available(OSX 10.6, *)
let NSWorkspaceVolumeOldLocalizedNameKey: String
@available(OSX 10.6, *)
let NSWorkspaceVolumeOldURLKey: String
let NSWorkspaceDidMountNotification: String
let NSWorkspaceDidUnmountNotification: String
let NSWorkspaceWillUnmountNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidRenameVolumeNotification: String
let NSWorkspaceWillPowerOffNotification: String
let NSWorkspaceWillSleepNotification: String
let NSWorkspaceDidWakeNotification: String
@available(OSX 10.6, *)
let NSWorkspaceScreensDidSleepNotification: String
@available(OSX 10.6, *)
let NSWorkspaceScreensDidWakeNotification: String
let NSWorkspaceSessionDidBecomeActiveNotification: String
let NSWorkspaceSessionDidResignActiveNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidChangeFileLabelsNotification: String
@available(OSX 10.6, *)
let NSWorkspaceActiveSpaceDidChangeNotification: String
@available(OSX 10.6, *)
let NSWorkspaceLaunchConfigurationAppleEvent: String
@available(OSX 10.6, *)
let NSWorkspaceLaunchConfigurationArguments: String
@available(OSX 10.6, *)
let NSWorkspaceLaunchConfigurationEnvironment: String
@available(OSX 10.6, *)
let NSWorkspaceLaunchConfigurationArchitecture: String
extension NSWorkspace {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSWorkspace frontmostApplication] instead.")
  func activeApplication() -> [NSObject : AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager mountedVolumeURLsIncludingResourceValuesForKeys:options:] instead.")
  func mountedLocalVolumePaths() -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager mountedVolumeURLsIncludingResourceValuesForKeys:options:] instead.")
  func mountedRemovableMedia() -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSWorkspace openURL:] instead.")
  func openFile(_ fullPath: String, from anImage: NSImage?, at point: NSPoint, in aView: NSView?) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func performFileOperation(_ operation: String, source source: String, destination destination: String, files files: [AnyObject], tag tag: UnsafeMutablePointer<Int>) -> Bool
}
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager moveItemAtURL:toURL:error:] instead.")
let NSWorkspaceMoveOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager copyItemAtURL:toURL:error:] instead.")
let NSWorkspaceCopyOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager linkItemAtURL:toURL:error:] instead.")
let NSWorkspaceLinkOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="This operation is unimplemented.")
let NSWorkspaceCompressOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="This operation is unimplemented.")
let NSWorkspaceDecompressOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="This operation is unimplemented.")
let NSWorkspaceEncryptOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="This operation is unimplemented.")
let NSWorkspaceDecryptOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager removeItemAtURL:error:] instead.")
let NSWorkspaceDestroyOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSWorkspace recycleURLs:completionHandler:] instead.")
let NSWorkspaceRecycleOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSWorkspace duplicateURLs:completionHandler:] instead.")
let NSWorkspaceDuplicateOperation: String
@available(OSX, introduced=10.0, deprecated=10.11)
let NSWorkspaceDidPerformFileOperationNotification: String
