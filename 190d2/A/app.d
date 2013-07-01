import std.stdio: readln, writeln;
import std.string: strip;
import std.array: split;
import std.conv: to;
import std.algorithm: sort;

/**
 * User: Jior
 * Date: 03.06.13
 * Time: 13:13
 */

void main() {
    auto nm = strip(readln()).split().to!(int[]);
    string[] ot;
    auto count = 0;

    bool f = nm[0] <= nm[1];
    sort(nm);
    foreach(n; 1..nm[0] + 1) {
        foreach(m; n..nm[1] + 1) {
            ot ~= f ? n.to!string ~ " " ~ m.to!string : m .to!string ~ " " ~ n.to!string;    
            count++;
        }    
    }  

    writeln(count);
    foreach(line; ot)
        writeln(line);
}