//Ejecucion de la API

import express from 'express';
import exhibitionsRoutes from './routes/exhibitions';

const app = express();

app.use(exhibitionsRoutes);


export default app;