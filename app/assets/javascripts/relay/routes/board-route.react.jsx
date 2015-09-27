var Relay = require('react-relay');
var BoardRelayRoute = {
  queries: {
    simple: () => Relay.QL` query { simple } `,
  },
  params: {
  },
  name: 'BoardHomeRoute',
}
module.exports = BoardRelayRoute;
