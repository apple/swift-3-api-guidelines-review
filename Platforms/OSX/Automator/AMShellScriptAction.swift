
@available(OSX 10.4, *)
class AMShellScriptAction : AMBundleAction {
  var remapLineEndings: Bool { get }
  var inputFieldSeparator: String { get }
  var outputFieldSeparator: String { get }
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  @available(OSX 10.5, *)
  init(contentsOf fileURL: URL) throws
  init()
  init?(coder aDecoder: Coder)
}
