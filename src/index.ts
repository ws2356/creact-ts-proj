const express = require('express')
const amqplib = require('amqplib')

const mqConn = amqplib.connect('amqp://pihome.local:5672')

const app = express()
const port = 8700

app.listen(port, () => {
  console.log(`Listening on port: ${port}`)
})
