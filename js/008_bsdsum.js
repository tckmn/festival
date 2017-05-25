#!/usr/bin/env node

var sum = 0;
process.stdin.on('data', (data) => {
    data.forEach((c) => {
        sum = (sum >> 1) + ((sum & 1) << 15);
        sum += c;
        sum &= 0xffff;
    });
});
process.stdin.on('end', () => {
    process.stdout.write(('000' + sum.toString(16)).slice(-4) + '\n');
});
