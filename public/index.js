const express = require('express');
const env = (require('dotenv').config()).parsed;

const app = express();

app.get('/', function (req, resp) {
    resp.send("Hello World!");
});

app.listen(env.APP_PORT, function (error) {
    if (error) {
        console.log("Init express: error");
    } else {
        console.log("Init express: success");
    }
});