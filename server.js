import express from 'express'
import morgan from 'morgan'
import 'dotenv/config'

//App instance
const app = express()
const port = process.env.PORT || 5000

//Middlewares
app.use(express.json())
app.use(express.urlencoded({extended : true}))
app.use(morgan("dev"))

app.get("/" , (request , response) => {

	return response.status(200).json({success : true , message : "Hello world"})

})

//Listening server
app.listen(port , () => {
	console.log(`Server running on ${port} port`)
	console.log(process.env.NODE_VERSION)
})
