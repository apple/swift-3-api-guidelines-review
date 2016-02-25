
@available(OSX, introduced=10.8, deprecated=10.10, message="You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
protocol GKChallengeEventHandlerDelegate : NSObjectProtocol {
  optional func localPlayerDidSelectChallenge(_ challenge: GKChallenge!)
  optional func shouldShowBannerForLocallyReceivedChallenge(_ challenge: GKChallenge!) -> Bool
  optional func localPlayerDidReceiveChallenge(_ challenge: GKChallenge!)
  optional func shouldShowBannerForLocallyCompletedChallenge(_ challenge: GKChallenge!) -> Bool
  optional func localPlayerDidCompleteChallenge(_ challenge: GKChallenge!)
  optional func shouldShowBannerForRemotelyCompletedChallenge(_ challenge: GKChallenge!) -> Bool
  optional func remotePlayerDidCompleteChallenge(_ challenge: GKChallenge!)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
class GKChallengeEventHandler : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  unowned(unsafe) var delegate: @sil_unmanaged GKChallengeEventHandlerDelegate!
}
