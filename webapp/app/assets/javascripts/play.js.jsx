var QuizList = React.createClass({
  getInitialState: function (){
      return({
        name: 'Matt',
        list: '<h2>list</h2>'
      })
    },
  getCardsList: function (){
    var html = "list of shit";
    var id = this.props.deck;
    var that = this;
    $.ajax({
      url: '/decks/' + id + '/get_list_of_cards',
    })
    .done(function(data) {
      console.log(data);
      that.setState({list: data})
    })
  },
  componentDidMount: function (){
    this.getCardsList();
  },
  render: function() {
    return (
      <div className="List" dangerouslySetInnerHTML={{__html: this.state.list}}></div>
    );
  }
});

$(document).ready(function() {
  var id = $('#content').attr('deck-id');
  ReactDOM.render(
    <QuizList deck={id} />,
    document.getElementById('content')
  );
});
