module.exports = (sequelize, DataType) => {
	const Transporte = sequelize.define("Transportes", {
		id: {
			type: DataType.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},
		placa: {
			type: DataType.STRING,
			allowNull: false,
			validate: {
				notEmpty: true
			}
		},
		modelo: {
			type: DataType.STRING,
			allowNull: false,
			validate: {
				notEmpty: true
			}
		}
	})

	Transporte.associate = function(models){
		Transporte.belongsTo(models.Users);
	};
	return Transporte
};