var React = require('react');
var Relay = require('react-relay');
var ReactDOM = require('react-dom');
var BoardRelayContainer = require('./components/board');
var BoardRelayRoute = require('./routes/board-route');

var BoardRelayStart = function() {
  ReactDOM.render(
    <Relay.RootContainer
      Component={BoardRelayContainer}
      route={BoardRelayRoute}
    />,
    document.getElementById('board-id')
  );
};

module.exports = BoardRelayStart;
