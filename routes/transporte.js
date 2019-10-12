import { runInNewContext } from "vm";

module.export = app => {

	const TrasporteModel = app.models.transporte;

	app.route("/transporte")
		.all((req, res) => {
			//middleware de pré-execução das rotas
			delete req.body.id;
			next();
		})
		.get((req, res) => {
			// "/trasporte": Lista de veículos
			Transporte.findAll({})
				.then(result => res.json(result))
				.catch(error => {
					res.status(412).json({msg: error.message});
				});
		})
		.post((req, res) => {
			// "trasporte": Cadastra um novo veiculo
			Transporte.create(req.body)
				.then(result => res.json(result))
				.catch(error => {
					res.status(412).json({msg: error.message});
				});
		});

	app.route("/transporte/:id")
		.all((req, res) => {
			//middleware de pré-execução das rotas
			delete req.body.id;
			next();
		})
		.get((req, res) => {
			// "/transporte/1": Consulta um veículo
			Transporte.findOne({where: req.params})
				.then(result => {
					if (result){
						res.json(result);
					}else{
						res.sendStatus(404);
					}
				})
				.catch(error => {
					res.status(412).json({msg: error.message});
				});
		})
		.put((req, res) => {
			// "/transporte/1": Atualiza o cadastro de um veículo
			Transporte.update(req.body, {where: req.params})
				.then(result => res.sendStatus(204))
				.catch(error => {
					res.status(412).json({msg: error.message});
				});
		})
		.delete((req, res) => {
			// "transporte/1": Exclui um veículo
			Transporte.destroy({where: req.params})
				.then(result => res.sendStatus(204))
				.catch(error => {
					res.status(412).json({msg: error.message});
				});
		});
}