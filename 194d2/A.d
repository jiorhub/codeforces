module A;

import std.stdio: readln, writeln, write;
import std.string: strip;
import std.array: split;
import std.conv: to;
import std.math: pow;

/**
 * User: Jior
 * Date: 27.07.13
 * Time: 12:30
 */

enum target {
    next,
    back
}

void main(string[] args) {
    auto br = strip(readln()).to!(int); //количество братьев
    auto pak = pow(br, 2); // количество пакетиков
    auto kon = (1 + pak) / 2.0 * pak; // количество конфет в пакетиках
    
    int[][] pks = new int[][br];

    int cur_br;
    target t = target.back;
    foreach(int p; 1..pak+1) {
        if(t == target.next)
            ++cur_br;
        if (t == target.back)
            --cur_br;

        if(cur_br >= br) {
            --cur_br;
            t = target.back;
        }

        if(cur_br < 0) {
            ++cur_br;
            t = target.next;
        }

        pks[cur_br] ~= p; 
    }

    foreach(line; pks) {
        foreach(i; line) {
            write(i, " ");
        }
        writeln();
    } 
}