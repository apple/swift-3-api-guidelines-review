
protocol GKChallengeListener : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, wantsToPlayChallenge challenge: GKChallenge)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, didReceiveChallenge challenge: GKChallenge)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, didCompleteChallenge challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
