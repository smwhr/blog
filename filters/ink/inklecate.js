const fs = require('fs');  
const path = require('path');  
const { exec } = require('child_process');

module.exports = {  
    initArguments: {},
    configFunction: function(eleventyConfig, options = {}) {
        if(!options.path) {
          options.path = "npx inkjs";
        }

        if(!options.output) {
          options.output = "_site";
        }

        eleventyConfig.addLiquidTag("ink", function(liquidEngine) {
            return {
              parse: function(tagToken, remainingTokens) {
                this.templateFile = tagToken.file;
                this.inkfile = tagToken.args;
              },
              render: function(scope, hash) {
                // Resolve variables
                var inkfile = liquidEngine.evalValue(this.inkfile, scope);
                var realpath = path.dirname(this.templateFile);
                var fullsourcepath = `${realpath}/${inkfile}`;
                var outputpath = path.normalize(`./${options.output}/`+`${realpath}`)
                var outputfile = `${outputpath}/${inkfile}.json`;

                fs.mkdirSync(outputpath, {recursive: true});

                var resolve;
                const p = new Promise( (yes) => {
                  resolve = yes;
                })

                var command = options.path + ` -o "${outputfile}"` + " " +  `"${fullsourcepath}"`;

                console.log(command)

                exec( command, (error, stdout, stderr) => {
                  if (error) {
                    console.error(`exec error: ${error}`);
                    return;
                  }
                  
                  console.error(`inklecate stdout: ${stdout}`);
                  console.error(`inklecate stderr: ${stderr}`);

                  resolve(`"${realpath.substr(1)}/${inkfile}.json"`); 
                });

                return p;
                
              }
            };
        });
    }
}