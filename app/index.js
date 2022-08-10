const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send(`Hola :)`);
})

app.get('/:name', (req, res) => {
  const name = req.params.name;
  res.send(`Hola: ${name ? name : ''}`);
})

app.listen(port, () => {
  console.log(`Server runing in port: ${port}`);
});