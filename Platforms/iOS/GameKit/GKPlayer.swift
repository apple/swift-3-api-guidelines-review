
@available(iOS 4.1, *)
class GKPlayer : Object {
  class func loadPlayersForIdentifiers(identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  var playerID: String? { get }
  @available(iOS 6.0, *)
  var displayName: String? { get }
  var alias: String? { get }
  @available(iOS 9.0, *)
  class func anonymousGuestPlayerWithIdentifier(guestIdentifier: String) -> Self
  @available(iOS 9.0, *)
  var guestIdentifier: String? { get }
  init()
}
extension GKPlayer {
  @available(iOS 5.0, *)
  func loadPhotoForSize(size: GKPhotoSize, withCompletionHandler completionHandler: ((UIImage?, Error?) -> Void)? = nil)
}
var GKPhotoSizeSmall: Int { get }
var GKPhotoSizeNormal: Int { get }
typealias GKPhotoSize = Int
let GKPlayerDidChangeNotificationName: String
extension GKPlayer {
  @available(iOS, introduced=4.1, deprecated=8.0, message="use -[GKLocalPlayer loadFriendPlayers...]")
  var isFriend: Bool { get }
}
