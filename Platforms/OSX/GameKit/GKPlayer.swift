
@available(OSX 10.8, *)
class GKPlayer : NSObject {
  class func loadPlayersForIdentifiers(identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  var playerID: String? { get }
  @available(OSX 10.8, *)
  var displayName: String? { get }
  var alias: String? { get }
  @available(OSX 10.11, *)
  class func anonymousGuestPlayerWithIdentifier(guestIdentifier: String) -> Self
  @available(OSX 10.11, *)
  var guestIdentifier: String? { get }
  init()
}
extension GKPlayer {
  @available(OSX 10.8, *)
  func loadPhotoForSize(size: GKPhotoSize, withCompletionHandler completionHandler: ((NSImage?, NSError?) -> Void)?)
}
var GKPhotoSizeSmall: Int { get }
var GKPhotoSizeNormal: Int { get }
typealias GKPhotoSize = Int
let GKPlayerDidChangeNotificationName: String
extension GKPlayer {
  @available(OSX, introduced=10.8, deprecated=10.10, message="use -[GKLocalPlayer loadFriendPlayers...]")
  var isFriend: Bool { get }
}
