
@available(OSX, introduced=10.8, deprecated=10.10, message="You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
protocol GKChallengeEventHandlerDelegate : NSObjectProtocol {
  optional func localPlayerDidSelectChallenge(challenge: GKChallenge!)
  optional func shouldShowBannerForLocallyReceivedChallenge(challenge: GKChallenge!) -> Bool
  optional func localPlayerDidReceiveChallenge(challenge: GKChallenge!)
  optional func shouldShowBannerForLocallyCompletedChallenge(challenge: GKChallenge!) -> Bool
  optional func localPlayerDidCompleteChallenge(challenge: GKChallenge!)
  optional func shouldShowBannerForRemotelyCompletedChallenge(challenge: GKChallenge!) -> Bool
  optional func remotePlayerDidCompleteChallenge(challenge: GKChallenge!)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
class GKChallengeEventHandler : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  unowned(unsafe) var delegate: @sil_unmanaged GKChallengeEventHandlerDelegate!
  init()
}
