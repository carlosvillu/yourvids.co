var express = require('express'),
    app = express(),
    async = require('async'),
    request = require( 'request' ),
    swig = require('swig');


app.engine('tpl', swig.renderFile);

app.set('view engine', 'tpl');
app.set('views', __dirname + '/views');
swig.setDefaults({ cache: false }); // We will use the express´s cache
app.use(express.static(__dirname + '/public'));

app.get('/', function (req, res) {
  request( {uri:'http://yourvids.co/api/boards', method: 'GET', json: true}, function( err, response, boards ){
    res.render('layout', {boards: boards});
  } );
});

app.get('/videos.html', function (req, res) {
  async.parallel( [
    async.apply( request, {uri:'http://yourvids.co/api/videos', method: 'GET', json: true, qs:{board: req.query.board, src: 'youtube', populate: 1}} ),
    async.apply( request, {uri:'http://yourvids.co/api/boards/' + req.query.board , method: 'GET', json: true, qs:{ populate: 1}} )
    ], function(err, results){
      res.render('boards/videos', { videos: results[0][1], board: results[1][1] });
  } );
});

app.get('/video.html', function (req, res) {
  async.parallel( [
    async.apply( request, {uri:'http://yourvids.co/api/videos/' + req.query.id, method: 'GET', json: true, qs:{populate: 1}} ),
    async.apply( request, {uri:'http://yourvids.co/api/videos/' + req.query.id + '/relateds', method: 'GET', json: true, qs:{subdomain: req.query.board, populate: 1}} )
    ], function(err, results){
      res.render('boards/video', { video: results[0][1], relateds:results[1][1], board: req.query.board });
  } );
});

app.listen( 3000, function(){
  console.log('Application Started on http://localhost:3000');
} );
