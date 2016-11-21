var QuizList = React.createClass({
  getInitialState: function (){
      return({
        name: 'Matt',
        list: '<h2>list</h2>'
      })
    },
  getCardsList: function (){
    var id = this.props.deck;
    var that = this;
    $.ajax({
      url: '/decks/' + id + '/get_list_of_cards',
    })
    .done(function(data) {
      that.setState({list: data})
    })
  },
  componentDidMount: function (){
    this.getCardsList();
    $('body').on('click', '.answer-link', function(event) {
      event.preventDefault();
      var element = $(this).parent().find('.answer-container')
      if (element.css('display') == 'block') {
        element.fadeOut(500, function() {});
      } else{
        element.fadeIn(500, function() {});
      };
    });
  },
  render: function() {
    return (
      <div className="List" dangerouslySetInnerHTML={{__html: this.state.list}}></div>
    );
  }
});

$(document).ready(function() {
  if ($('#deck-content') != null) {
    var id = $('#deck-content').attr('deck-id');
    ReactDOM.render(
      <QuizList deck={id} />,
      document.getElementById('deck-content')
    );
  };
});
