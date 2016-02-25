
class NSOpenPanel : NSSavePanel {
  var URLs: [NSURL] { get }
  var resolvesAliases: Bool
  var canChooseDirectories: Bool
  var allowsMultipleSelection: Bool
  var canChooseFiles: Bool
  @available(OSX 10.10, *)
  var canResolveUbiquitousConflicts: Bool
  @available(OSX 10.10, *)
  var canDownloadUbiquitousContents: Bool
  @available(OSX 10.11, *)
  var accessoryViewDisclosed: Bool
}
extension NSOpenPanel {
}
