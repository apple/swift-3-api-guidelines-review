
struct NSWorkspaceLaunchOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var AndPrint: NSWorkspaceLaunchOptions { get }
  static var WithErrorPresentation: NSWorkspaceLaunchOptions { get }
  static var InhibitingBackgroundOnly: NSWorkspaceLaunchOptions { get }
  static var WithoutAddingToRecents: NSWorkspaceLaunchOptions { get }
  static var WithoutActivation: NSWorkspaceLaunchOptions { get }
  static var Async: NSWorkspaceLaunchOptions { get }
  static var NewInstance: NSWorkspaceLaunchOptions { get }
  static var AndHide: NSWorkspaceLaunchOptions { get }
  static var AndHideOthers: NSWorkspaceLaunchOptions { get }
  static var Default: NSWorkspaceLaunchOptions { get }
  @available(OSX, introduced=10.3, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var AllowingClassicStartup: NSWorkspaceLaunchOptions { get }
  @available(OSX, introduced=10.3, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var PreferringClassic: NSWorkspaceLaunchOptions { get }
}
struct NSWorkspaceIconCreationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ExcludeQuickDrawElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
  static var Exclude10_4ElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
}
class NSWorkspace : NSObject {
  class func sharedWorkspace() -> NSWorkspace
  var notificationCenter: NSNotificationCenter { get }
  func openFile(_ fullPath: String) -> Bool
  func openFile(_ fullPath: String, withApplication appName: String?) -> Bool
  func openFile(_ fullPath: String, withApplication appName: String?, andDeactivate flag: Bool) -> Bool
  func openURL(_ url: NSURL) -> Bool
  func launchApplication(_ appName: String) -> Bool
  @available(OSX 10.6, *)
  func launchApplicationAtURL(_ url: NSURL, options options: NSWorkspaceLaunchOptions, configuration configuration: [String : AnyObject]) throws -> NSRunningApplication
  @available(OSX 10.10, *)
  func openURL(_ url: NSURL, options options: NSWorkspaceLaunchOptions, configuration configuration: [String : AnyObject]) throws -> NSRunningApplication
  @available(OSX 10.10, *)
  func openURLs(_ urls: [NSURL], withApplicationAtURL applicationURL: NSURL, options options: NSWorkspaceLaunchOptions, configuration configuration: [String : AnyObject]) throws -> NSRunningApplication
  func launchApplication(_ appName: String, showIcon showIcon: Bool, autolaunch autolaunch: Bool) -> Bool
  func fullPathForApplication(_ appName: String) -> String?
  func selectFile(_ fullPath: String?, inFileViewerRootedAtPath rootFullPath: String) -> Bool
  @available(OSX 10.6, *)
  func activateFileViewerSelectingURLs(_ fileURLs: [NSURL])
  @available(OSX 10.6, *)
  func showSearchResultsForQueryString(_ queryString: String) -> Bool
  func noteFileSystemChanged(_ path: String)
  func getInfoForFile(_ fullPath: String, application appName: AutoreleasingUnsafeMutablePointer<NSString?>, type type: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isFilePackageAtPath(_ fullPath: String) -> Bool
  func iconForFile(_ fullPath: String) -> NSImage
  func iconForFiles(_ fullPaths: [String]) -> NSImage?
  func iconForFileType(_ fileType: String) -> NSImage
  func setIcon(_ image: NSImage?, forFile fullPath: String, options options: NSWorkspaceIconCreationOptions) -> Bool
  @available(OSX 10.6, *)
  var fileLabels: [String] { get }
  @available(OSX 10.6, *)
  var fileLabelColors: [NSColor] { get }
  @available(OSX 10.6, *)
  func recycleURLs(_ URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)?)
  @available(OSX 10.6, *)
  func duplicateURLs(_ URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)?)
  func getFileSystemInfoForPath(_ fullPath: String, isRemovable removableFlag: UnsafeMutablePointer<ObjCBool>, isWritable writableFlag: UnsafeMutablePointer<ObjCBool>, isUnmountable unmountableFlag: UnsafeMutablePointer<ObjCBool>, description description: AutoreleasingUnsafeMutablePointer<NSString?>, type fileSystemType: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func unmountAndEjectDeviceAtPath(_ path: String) -> Bool
  @available(OSX 10.6, *)
  func unmountAndEjectDeviceAtURL(_ url: NSURL) throws
  func extendPowerOffBy(_ requested: Int) -> Int
  func hideOtherApplications()
  @available(OSX 10.6, *)
  func URLForApplicationWithBundleIdentifier(_ bundleIdentifier: String) -> NSURL?
  @available(OSX 10.6, *)
  func URLForApplicationToOpenURL(_ url: NSURL) -> NSURL?
  func absolutePathForAppBundleWithIdentifier(_ bundleIdentifier: String) -> String?
  func launchAppWithBundleIdentifier(_ bundleIdentifier: String, options options: NSWorkspaceLaunchOptions, additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifier identifier: AutoreleasingUnsafeMutablePointer<NSNumber?>) -> Bool
  func openURLs(_ urls: [NSURL], withAppBundleIdentifier bundleIdentifier: String?, options options: NSWorkspaceLaunchOptions, additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifiers identifiers: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  @available(OSX 10.7, *)
  var frontmostApplication: NSRunningApplication? { get }
  @available(OSX 10.7, *)
  var menuBarOwningApplication: NSRunningApplication? { get }
  @available(OSX 10.5, *)
  func typeOfFile(_ absoluteFilePath: String) throws -> String
  @available(OSX 10.5, *)
  func localizedDescriptionForType(_ typeName: String) -> String?
  @available(OSX 10.5, *)
  func preferredFilenameExtensionForType(_ typeName: String) -> String?
  @available(OSX 10.5, *)
  func filenameExtension(_ filenameExtension: String, isValidForType typeName: String) -> Bool
  @available(OSX 10.5, *)
  func type(_ firstTypeName: String, conformsToType secondTypeName: String) -> Bool
}
extension NSWorkspace {
  @available(OSX 10.6, *)
  func setDesktopImageURL(_ url: NSURL, forScreen screen: NSScreen, options options: [String : AnyObject]) throws
  @available(OSX 10.6, *)
  func desktopImageURLForScreen(_ screen: NSScreen) -> NSURL?
  @available(OSX 10.6, *)
  func desktopImageOptionsForScreen(_ screen: NSScreen) -> [String : AnyObject]?
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
  func openFile(_ fullPath: String, fromImage anImage: NSImage?, at point: NSPoint, inView aView: NSView?) -> Bool
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
