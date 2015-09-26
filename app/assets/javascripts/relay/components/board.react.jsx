var React = require('react');
var Relay = require('react-relay');

class BoardApp extends React.Component {
  render() {
    var _name = this.props.simple.name;
    return (
      <div>
        Boarding... {_name}
      </div>
    );
  }
}

var BoardRelayContainer = Relay.createContainer(BoardApp, {
  fragments: {
    simple: () => Relay.QL`
      fragment on Simple {
        name
      }
    `,
  },
});
module.exports = BoardRelayContainer;
