// Initialize app
var myApp = new Framework7({
  pushState: true,
  onAjaxStart: function ( xhr ) {
      myApp.showIndicator();
  },
  onAjaxComplete: function ( xhr ) {
      myApp.hideIndicator();
  }
});
 
// If we need to use custom DOM library, let's save it to $$ variable:
var $$ = Framework7.$;
var playersCache = {};
var isOnYouTubeIframeAPIReady = false;
var onYouTubeIframeAPIReady = function(){ isOnYouTubeIframeAPIReady = true; };
$$(document).on('pageBeforeAnimation', function (e) {
  // Do something here when page loaded and initialized
  Array.prototype.slice.call(mainView.container.querySelectorAll('iframe')).forEach( function( player ){
    if( isOnYouTubeIframeAPIReady )
    {
      if( !playersCache[player.id] || !playersCache[player.id].pauseVideo )
      {
        playersCache[player.id] = new YT.Player(player.id);
      }
      playersCache[player.id].pauseVideo();
    }
  } );
})
 
// Add view
var mainView = myApp.addView('#view-boards', {
  // Because we want to use dynamic navbar, we need to enable it for this view:
  dynamicNavbar: true
});
