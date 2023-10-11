const express = require('express');
const app = express();
const morgan = require('morgan');
const port = process.env.PORT;

app.use(morgan('combined'));

app.get('/status', (req, res) => {
  res.json({ status: 'ok' });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
