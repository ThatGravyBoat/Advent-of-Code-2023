const fs= require('fs');
const input = fs.readFileSync('input.txt', 'utf8');
const lines = input.split(/\r?\n/);
const newLines = lines.map(line => `function aoc:processing/process {input:"${line}"}`);
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question('What day is this for?\n> ', day => {
    readline.question('What part is this for?\n> ', part => {
        fs.writeFileSync(`./aoc_day_${day}_part_${part}/data/aoc/functions/run.mcfunction`, newLines.join('\n'), 'utf8');
        readline.close();
    })
});