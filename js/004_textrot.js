#!/usr/bin/env node

var str = '';
process.stdin.on('data', (data) => {
    str += data.toString();
    if (str.indexOf('\n' !== -1)) textrot();
});
function textrot() {
    str = str.split('\n')[0];
    for (var i = 0; i < str.length; ++i) {
        process.stdout.write(str.slice(i) + str.slice(0, i) + '\n');
    }
    process.exit();
}
