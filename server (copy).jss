var r = require("request");
var http = require("http");



http.createServer(function (request, response) 
{
        
        response.writeHead(200, {'Content-Type': 'text/plain'});
        
        var arr = request.url.split("/");
        var query='';
        var temp='';
        
        if(arr.length==3)       //custom field is not present
        {
                query='SELECT bname FROM bookdata WHERE tid='+arr[1]+' AND bcat=\''+arr[2]+'\';';
                
                r(
                {
                        uri: "http://10.0.3.152:3001/"+query,
                        method: "GET", 
                        timeout: 10000,
                        followRedirect: true,
                        maxRedirects: 1

                }, function(error, resp, body){
                //console.log(body);
                response.end(body);}
                );

        }
        else if(arr.length==4)  //custom field is present,fetch it's ctype and 
        {
                query1='SELECT ctype FROM metadata WHERE tid='+arr[1]+';';
                query2='SELECT bname FROM metadata as md, bookdata as bd WHERE md.tid='+arr[1]+' AND md.tid=bd.tid AND CAST(custom as unsigned)<'+arr[3]+';';
                query3='SELECT bname,custom FROM bookdata WHERE tid='+arr[1]+' AND Length(custom)>'+(arr[3].length-1)+';';


                r(
                {
                        uri: "http://10.0.3.151:3001/"+query1+"/"+query2+'/'+query3,
                        method: "GET",
                        timeout: 10000,
                        followRedirect: true,
                        maxRedirects: 1

                }, function(error, resp, body){
                //console.log(body);
                response.end(body);
                }
                );

        }
        

}).listen(3001,"10.0.3.181");

console.log(" Server 2 Listening ");


