
@available(tvOS 6.0, *)
let UIStateRestorationViewControllerStoryboardKey: String
@available(tvOS 6.0, *)
let UIApplicationStateRestorationBundleVersionKey: String
@available(tvOS 6.0, *)
let UIApplicationStateRestorationUserInterfaceIdiomKey: String
@available(tvOS 7.0, *)
let UIApplicationStateRestorationTimestampKey: String
@available(tvOS 7.0, *)
let UIApplicationStateRestorationSystemVersionKey: String
protocol UIViewControllerRestoration {
  @available(tvOS 2.0, *)
  static func viewControllerWithRestorationIdentifierPath(_ identifierComponents: [AnyObject], coder coder: NSCoder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  @available(tvOS 2.0, *)
  func modelIdentifierForElementAtIndexPath(_ idx: NSIndexPath, inView view: UIView) -> String?
  @available(tvOS 2.0, *)
  func indexPathForElementWithModelIdentifier(_ identifier: String, inView view: UIView) -> NSIndexPath?
}
protocol UIStateRestoring : NSObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: AnyObject.Type? { get }
  optional func encodeRestorableStateWithCoder(_ coder: NSCoder)
  optional func decodeRestorableStateWithCoder(_ coder: NSCoder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func objectWithRestorationIdentifierPath(_ identifierComponents: [String], coder coder: NSCoder) -> UIStateRestoring?
}
