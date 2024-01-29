const fs = require('node:fs');
const colors = []
try {
    const data = fs.readFileSync('../palete.md', 'utf8');
    data.split("\n").forEach(element => {
        const name = element.match("- (.+) =");
        
        const color_data = element.match("#[a-zA-Z0-9]{6}");
        if(color_data && color_data.length == 1){
            colors.push({
                name: name[0].substring(2, name[0].length-2).trim(),
                color: color_data[0].trim()
            });
        }
    });
} catch (err) {
    console.error(err);
}

console.log(colors)
// Data which will write in a file.
let data = `<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <style>
            body {
                background-color: var(--main-background-color, #1f2329);
            }
            ::selection {
                background: var(--selection-color, #444C59);
            }
        </style>
    </head>
    <body>`


// Color selection
data += `<p>`
colors.forEach(element => {
    data += "<span style=\"color: " + element.color + ";\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</span>"
});
data += "</p>"


// Color selection
data += `<h2>Background</h2>
        <div style="display: flex; flex-direction: row;">`
colors.forEach(element => {
    data += "<button onclick=\"changeBKColor(\"" + element.color + "\")\">" + element.name + "</button>"
});
data += "</div>"
data += `<h2>Selection</h2>
        <div style="display: flex; flex-direction: row;">`
colors.forEach(element => {
    data += "<button onclick=\"changeSelColor('" + element.color + "')\">" + element.name + "</button>"
});
data += "</div>"


// END
data += `
    </body>
    <script>
        const root = document.querySelector(':root');
        function changeBKColor(color) {
            root.style.setProperty('--main-background-color', color);
        }
        function changeSelColor(color) {
            root.style.setProperty('--selection-color', color);
        }
    </script>
</html>`
 
// Write data in 'Hello.txt' .
fs.writeFile('index.html', data, (err) => {
    // In case of a error throw err.
    if (err) throw err;
})
