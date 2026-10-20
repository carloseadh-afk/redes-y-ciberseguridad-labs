const express = require('express');
const app = express();

// Ruta HTTP que recibe parámetros del usuario
app.get('/usuario', (req, res) => {
    const usuario = req.query.username;

    // Vulnerabilidad: Inyección de código (Code Injection) detectada por CodeQL
    eval("console.log('Usuario conectado: ' + " + usuario + ");");
});
