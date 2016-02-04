
struct NSWorkspaceLaunchOptions : OptionSetType {
  init(rawValue: UInt)
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
  init(rawValue: UInt)
  let rawValue: UInt
  static var ExcludeQuickDrawElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
  static var Exclude10_4ElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
}
class NSWorkspace : NSObject {
  class func sharedWorkspace() -> NSWorkspace
  var notificationCenter: NSNotificationCenter { get }
  func openFile(fullPath: String) -> Bool
  func openFile(fullPath: String, withApplication appName: String?) -> Bool
  func openFile(fullPath: String, withApplication appName: String?, andDeactivate flag: Bool) -> Bool
  func openURL(url: NSURL) -> Bool
  func launchApplication(appName: String) -> Bool
  @available(OSX 10.6, *)
  func launchApplicationAtURL(url: NSURL, options: NSWorkspaceLaunchOptions, configuration: [String : AnyObject]) throws -> NSRunningApplication
  @available(OSX 10.10, *)
  func openURL(url: NSURL, options: NSWorkspaceLaunchOptions, configuration: [String : AnyObject]) throws -> NSRunningApplication
  @available(OSX 10.10, *)
  func openURLs(urls: [NSURL], withApplicationAtURL applicationURL: NSURL, options: NSWorkspaceLaunchOptions, configuration: [String : AnyObject]) throws -> NSRunningApplication
  func launchApplication(appName: String, showIcon: Bool, autolaunch: Bool) -> Bool
  func fullPathForApplication(appName: String) -> String?
  func selectFile(fullPath: String?, inFileViewerRootedAtPath rootFullPath: String) -> Bool
  @available(OSX 10.6, *)
  func activateFileViewerSelectingURLs(fileURLs: [NSURL])
  @available(OSX 10.6, *)
  func showSearchResultsForQueryString(queryString: String) -> Bool
  func noteFileSystemChanged(path: String)
  func getInfoForFile(fullPath: String, application appName: AutoreleasingUnsafeMutablePointer<NSString?>, type: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isFilePackageAtPath(fullPath: String) -> Bool
  func iconForFile(fullPath: String) -> NSImage
  func iconForFiles(fullPaths: [String]) -> NSImage?
  func iconForFileType(fileType: String) -> NSImage
  func setIcon(image: NSImage?, forFile fullPath: String, options: NSWorkspaceIconCreationOptions) -> Bool
  @available(OSX 10.6, *)
  var fileLabels: [String] { get }
  @available(OSX 10.6, *)
  var fileLabelColors: [NSColor] { get }
  @available(OSX 10.6, *)
  func recycleURLs(URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)?)
  @available(OSX 10.6, *)
  func duplicateURLs(URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)?)
  func getFileSystemInfoForPath(fullPath: String, isRemovable removableFlag: UnsafeMutablePointer<ObjCBool>, isWritable writableFlag: UnsafeMutablePointer<ObjCBool>, isUnmountable unmountableFlag: UnsafeMutablePointer<ObjCBool>, description: AutoreleasingUnsafeMutablePointer<NSString?>, type fileSystemType: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func unmountAndEjectDeviceAtPath(path: String) -> Bool
  @available(OSX 10.6, *)
  func unmountAndEjectDeviceAtURL(url: NSURL) throws
  func extendPowerOffBy(requested: Int) -> Int
  func hideOtherApplications()
  @available(OSX 10.6, *)
  func URLForApplicationWithBundleIdentifier(bundleIdentifier: String) -> NSURL?
  @available(OSX 10.6, *)
  func URLForApplicationToOpenURL(url: NSURL) -> NSURL?
  func absolutePathForAppBundleWithIdentifier(bundleIdentifier: String) -> String?
  func launchAppWithBundleIdentifier(bundleIdentifier: String, options: NSWorkspaceLaunchOptions, additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifier identifier: AutoreleasingUnsafeMutablePointer<NSNumber?>) -> Bool
  func openURLs(urls: [NSURL], withAppBundleIdentifier bundleIdentifier: String?, options: NSWorkspaceLaunchOptions, additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifiers identifiers: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  @available(OSX 10.7, *)
  var frontmostApplication: NSRunningApplication? { get }
  @available(OSX 10.7, *)
  var menuBarOwningApplication: NSRunningApplication? { get }
  @available(OSX 10.5, *)
  func typeOfFile(absoluteFilePath: String) throws -> String
  @available(OSX 10.5, *)
  func localizedDescriptionForType(typeName: String) -> String?
  @available(OSX 10.5, *)
  func preferredFilenameExtensionForType(typeName: String) -> String?
  @available(OSX 10.5, *)
  func filenameExtension(filenameExtension: String, isValidForType typeName: String) -> Bool
  @available(OSX 10.5, *)
  func type(firstTypeName: String, conformsToType secondTypeName: String) -> Bool
  init()
}
extension NSWorkspace {
  @available(OSX 10.6, *)
  func setDesktopImageURL(url: NSURL, forScreen screen: NSScreen, options: [String : AnyObject]) throws
  @available(OSX 10.6, *)
  func desktopImageURLForScreen(screen: NSScreen) -> NSURL?
  @available(OSX 10.6, *)
  func desktopImageOptionsForScreen(screen: NSScreen) -> [String : AnyObject]?
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
  func openFile(fullPath: String, fromImage anImage: NSImage?, at point: NSPoint, inView aView: NSView?) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func performFileOperation(operation: String, source: String, destination: String, files: [AnyObject], tag: UnsafeMutablePointer<Int>) -> Bool
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
