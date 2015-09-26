var Relay = require('react-relay');
//var BoardRelayRoute = class extends Relay.Route {
//  static queries = {
//    board: () => Relay.QL`query { board }`,
//  };
//  static routeName = 'BoardHomeRoute';
//};
//KAKAclass BoardRelayRoute extends Relay.Route {};
//KAKABoardRelayRoute.queries = {
//KAKA    simple: () => Relay.QL`
//KAKA      query { simple }
//KAKA    `,
//    board: () => Relay.QL`query { board }`
//KAKA    feedbackChannel: () => Relay.QL`query { feedbackChannel }`,
//KAKA};
//KAKABoardRelayRoute.routeName = 'BoardHomeRoute';
//    feedbackChannelRoot: () => Relay.QL`
//      query getFeedbackChannel($uniqueHash: String!) { feedbackChannelRoot(unique_hash: $uniqueHash) }`,
//  },
//SS    feedbackChannelRoot: () => Relay.QL`
//SS      query { feedbackChannelRoot(unique_hash: "qnHXwf7V") }
//SS    `,
var BoardRelayRoute = {
  queries: {
    simple: () => Relay.QL` query { simple } `,
  },
  params: {
  },
  name: 'BoardHomeRoute',
}
window.BoardRelayRoute = BoardRelayRoute;
module.exports = BoardRelayRoute;
//export default BoardRelayRoute;
