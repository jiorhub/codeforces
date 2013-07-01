import std.stdio: readln, writeln;
import std.string: strip;
import std.conv: to;
import std.array: split;
import std.algorithm: max;

/**
 * User: Jior
 * Date: 03.06.13
 * Time: 14:25
 */

void main(string[] args) {
    int[100001] m;
    char[] inString = strip(readln()).dup;
    for(int i = 0; i < inString.length-1; i++) {
        m[i+1] = m[i] + (inString[i] == inString[i+1]);
    }

    int countReq = to!int(strip(readln()).dup);
    foreach(int regNum; 0..countReq) {
        string request = strip(readln());
        int[] reqValue = to!(int[])(request.split());
        writeln(m[reqValue[1]-1] - m[reqValue[0]-1]);
    }   
}
