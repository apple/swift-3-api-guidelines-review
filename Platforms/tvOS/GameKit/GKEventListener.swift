
protocol GKChallengeListener : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, wantsToPlayChallenge challenge: GKChallenge)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, didReceiveChallenge challenge: GKChallenge)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, didCompleteChallenge challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
