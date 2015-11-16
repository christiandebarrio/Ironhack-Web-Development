var net = require('net');
var port = 11312;
var hashSet = {};

var server = net.createServer(function(connection) {
    console.log('Connection to %s open', port);
    connection.on('data', function(data) {
        var newData = String(data).trim();
        var command = String(data).toUpperCase();
        var key;
        var value;
        if (command.indexOf("SET") > -1) {
            var arraySet = newData.split(" ");
            key = arraySet[1];
            value = arraySet[2];
            hashSet[key] = value;
            connection.write("STORED\r\n")
        } else if (command.indexOf("GET") > -1){
            var arrayGet = newData.split(" ");
            key = arrayGet[1];
            value = hashSet[key]
            connection.end("VALUE " + value + "\r\n");
            console.log('Connection to %s closed', port);
        } else {
            connection.write('ERROR\r\n');
        }
    });
});
server.listen(port);