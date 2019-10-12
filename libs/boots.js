module.exports = app => {

    app.db.sync().done(() => {
        app.listen(app.get("port"), () => {
            console.log("API de trasportes rodando....")
        });    
    });
}