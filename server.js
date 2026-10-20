const express = require('express');
const app = express();

app.get('/', (req, res) => res.send('¡Hola desde Docker y VS Code!'));
app.listen(3000, () => console.log('Servidor listo en el puerto 3000'));
