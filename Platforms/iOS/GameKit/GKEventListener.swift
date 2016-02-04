
protocol GKChallengeListener : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, wantsToPlayChallenge challenge: GKChallenge)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didReceiveChallenge challenge: GKChallenge)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didCompleteChallenge challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
