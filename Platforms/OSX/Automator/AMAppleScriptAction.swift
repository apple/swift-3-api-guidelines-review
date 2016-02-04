
@available(OSX 10.4, *)
class AMAppleScriptAction : AMBundleAction {
  var script: OSAScript
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  @available(OSX 10.5, *)
  init(contentsOfURL fileURL: NSURL) throws
  init()
  init?(coder aDecoder: NSCoder)
}
