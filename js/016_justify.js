#!/usr/bin/env node

var str = '';
process.stdin.on('data', (data) => {
    str += data.toString();
    if (str.indexOf('\n' !== -1)) go();
});

function go() {
    str = str.split('\n')[0];
    var lines = [], line = '';
    str.split(' ').forEach((word) => {
        if (line.length + (line ? 1 : 0) + word.length > 80) {
            lines.push(line);
            line = '';
        }
        line += (line ? ' ' : '') + word;
    });

    lines.forEach((line) => {
        process.stdout.write(justify(line) + '\n');
    });
    process.stdout.write(line + '\n');

    process.exit();
}

function justify(line) {
    var words = line.split(' ');
    var slots = words.length - 1;
    var total = 80 - line.length;
    var spaces = Math.floor(total / slots) + 1, extra = total % slots;
    return words.map((word, idx) => {
        return word + ' '.repeat(idx == slots ? 0 :
            idx < extra ? spaces + 1 : spaces);
    }).join('');
}
