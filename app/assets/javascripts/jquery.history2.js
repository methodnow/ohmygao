$(document).ready(function(){
  if (!History.enabled){
    return false;
  }

  History.Adapter.bind(window,'statechange',function(){
    var State = History.getState();
    History.log(State.data, State.title, State.url);
  });

  window.addEventListener('popstate', function(event) {
    $.getScript(History.getState(event.state).data.url+'?history');
  });
});
