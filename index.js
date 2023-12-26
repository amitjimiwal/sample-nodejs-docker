//create a express server
const express = require("express");
const app = express();
const port = 3000;
app.get("/", (req, res) => res.send("Hello From Docker Nodejs app container"));
app.listen(port, () => console.log(`Server listening on port ${port}!`));
