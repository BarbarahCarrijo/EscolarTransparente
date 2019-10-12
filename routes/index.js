module.exports = app => {
	app.get("/", function (req, res){
		res.json({status: "API de Transportes"})
	});
};