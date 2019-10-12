const Sequelize = require('sequelize');
const cofig = require('./libs/config.js');
let sequelize = null;

module.exports = () => {
    if(!sequelize){
        sequelize = new Sequelize(
            config.database,
            config.username,
            config.password,
            config.params,
        );
    }
    return sequelize;
};