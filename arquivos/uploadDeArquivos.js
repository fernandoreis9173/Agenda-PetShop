const fs = require('fs')

fs.createReadStream('./assets/husky.jpg')
    .pipe(fs.createWriteStream('./assets/husky-stream.jpg'))
    .on('finish', () => console.log('Imagem foi criada com sucesso'))