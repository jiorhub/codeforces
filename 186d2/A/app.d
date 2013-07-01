import std.stdio: readln, writeln;
import std.string: strip;
import std.conv: to;
import std.algorithm: max;

/**
 * User: Jior
 * Date: 03.06.13
 * Time: 13:13
 */

void main(string[] args) {
    char[] buffer = strip(readln()).dup;
    int account = to!int(buffer);

    if (account < 0 && buffer.length > 2) {
        int var1 = to!int(buffer[0..$-1]);
        int var2 = to!int(buffer[0..$-2] ~ buffer[$-1..$]);

        if(var1 > account || var2 > account)
            writeln(max(var1, var2));
    } else {
        writeln(account);
    }     
}
