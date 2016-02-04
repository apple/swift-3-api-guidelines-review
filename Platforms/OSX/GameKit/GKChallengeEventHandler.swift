
@available(OSX, introduced=10.8, deprecated=10.10, message="You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
protocol GKChallengeEventHandlerDelegate : ObjectProtocol {
  optional func localPlayerDidSelect(challenge: GKChallenge!)
  optional func shouldShowBannerForLocallyReceivedChallenge(challenge: GKChallenge!) -> Bool
  optional func localPlayerDidReceive(challenge: GKChallenge!)
  optional func shouldShowBannerForLocallyCompletedChallenge(challenge: GKChallenge!) -> Bool
  optional func localPlayerDidComplete(challenge: GKChallenge!)
  optional func shouldShowBannerForRemotelyCompletedChallenge(challenge: GKChallenge!) -> Bool
  optional func remotePlayerDidComplete(challenge: GKChallenge!)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
class GKChallengeEventHandler : Object {
  @available(OSX, introduced=10.8, deprecated=10.10)
  unowned(unsafe) var delegate: @sil_unmanaged GKChallengeEventHandlerDelegate!
  init()
}
