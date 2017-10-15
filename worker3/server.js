var http = require('http');
url = require('url');
http.createServer(function(req, res) {
q = url.parse(req.url, true);
  var qdata = q.query;
  cat = qdata.data;
  console.log(cat);
  console.log("abc");
  //cat = "Fantasy";
  getSQL(function(err, result) {
    res.writeHead(200, {
      'Content-Type' : 'x-application/json'
    });
    res.end(result);
  });
}).listen(8080);

function getSQL(callback) {
    var mysql = require('mysql');
    var connection = mysql.createConnection({
        host : '172.17.0.11',
        user : 'root',
        password : 'password',
	database : 'test',
    });

    connection.connect();
    var json = '';
    //var query = 'SELECT * FROM books';
     console.log(cat);
    var query = 'SELECT * FROM books where category = "'+cat+'"';
    connection.query(query, function(err, results, fields) {
        if (err)
            return callback(err, null);

        console.log('The query-result is: ', results[0]);

        // wrap result-set as json
        json = JSON.stringify(results);

        /***************
        * Correction 2: Nest the callback correctly!
        ***************/
        connection.end();
        console.log('JSON-result:', json);
        callback(null, json);
    });
};



