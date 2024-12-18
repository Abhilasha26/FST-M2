const express=require('rxpress');
const app=express();

app.get('/',(req, res)=> {
    res.send('Hi There!');
});

app.listen(8080,() =>{
    console.log("Listening on port 8080");
});