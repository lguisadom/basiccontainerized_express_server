
# Basic containerized Express Server

`git clone https://github.com/Proyectos-Cibertec/Supermercado`

## Steps

### Local
1. Install dependencies
`make install`

2. Run
`node app/index.js`

3. Test

`curl --location --request GET 'http://localhost:3000/Luis'`

`curl --location --request GET 'http://localhost:3000/'`

### Docker

1. Build image
`docker build -t lguisadom/ejemplo1:1.0 .`

2. Docker run
`docker container run -p 3000:3000 --rm lguisadom/ejemplo1:1.0`

3. Test

`curl --location --request GET 'http://localhost:3000/Luis'`

`curl --location --request GET 'http://localhost:3000/'`
