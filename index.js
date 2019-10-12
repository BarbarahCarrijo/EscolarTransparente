var express = require ("express");
var consign = require("consign");
var app = express();

consign()
    .include("db.js")
	.then("models")
	.then("libs/middlewares.js")
	.then("routes")
	.then("libs/boot.js")
	.into(app);