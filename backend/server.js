const app = require('./app');
const { PORT } = require('./config');

app.listen(PORT, () => console.log(`Started on localhost:${PORT}`));