const express = require("express");
const path = require("path");

const app = express();
const PORT = 3000;

app.use(express.static(path.join(__dirname, "../public")));

app.get("/saludo/:pais/:nombre", function(req, res){
    console.log("Hola soy: ",req.params.nombre, " saludos desde: ", req.params.pais);
    return res.json({"mensaje": "Hola desde Node"});
})


app.listen(PORT, function(){
    console.log("Servidor iniciado en http://127.0.0.1:3000");
})