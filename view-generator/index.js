const fs = require('node:fs');
const colors = []
let html_template_file = "";

try {
    html_template_file += fs.readFileSync('./index_template.html', 'utf8');
    const data = fs.readFileSync('../palette.md', 'utf8');
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


// Color selection
let color_option_string = "";
colors.forEach(element => {
    color_option_string += "<option value=\"" + element.color + "\">" + element.name + "</option>"
});

html_template_file = html_template_file.replace("<!--FOREGROUND_COLOR_OPTIONS-->", color_option_string)
html_template_file = html_template_file.replace("<!--BACKGROUND_COLOR_OPTIONS-->", color_option_string)
html_template_file = html_template_file.replace("<!--SELECTION_COLOR_OPTIONS-->", color_option_string)
 
// Write data in 'Hello.txt' .
fs.writeFile('index.html', html_template_file, (err) => {
    // In case of a error throw err.
    if (err) throw err;
})
