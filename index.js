const express = require('express');
const os = require("os");
const app = express();
const port = 80;

const phrases = [
    "Get ready to be inspired…",
    "See rejection as redirection.",
    "There is beauty in simplicity.",
    "You can’t be late until you show up.",
    "Maybe life is testing you. Don’t give up.",
    "Impossible is just an opinion.",
    "Alone or not you gonna walk forward."
];

app.get('/', (req, res) => {
    const number = Math.floor(Math.random() * phrases.length);
    res.send(phrases[number] + " - Container Id: " + os.hostname());
});

// This keeps the server running
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
