// app.ts
import express from 'express';
import MainRouter from './routes/MainRouter';

const app = express();
const port = 3000;

app.use(express.json());

// Configurar o Express para servir arquivos estáticos do diretório "public"
app.use(express.static('./src/public'));

app.set('view engine', 'ejs');
app.set('views', './src/views');

// Use o MainRouter como middleware
app.use(MainRouter);

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
