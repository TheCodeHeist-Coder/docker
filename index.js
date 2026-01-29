import express from 'express'

const app = express();

app.get("/", (req, res) => {
    res.send("Hello! Raj")
})


app.listen(4000, () => {
    console.log("hee hee hee")
})