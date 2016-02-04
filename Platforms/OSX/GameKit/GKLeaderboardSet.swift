
@available(OSX 10.10, *)
class GKLeaderboardSet : Object, Coding, SecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(OSX 10.10, *)
  class func loadLeaderboardSets(completionHandler completionHandler: (([GKLeaderboardSet]?, Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func loadLeaderboards(completionHandler completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
  init()
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
}
extension GKLeaderboardSet {
  func loadImage(completionHandler completionHandler: ((NSImage?, Error?) -> Void)? = nil)
}
