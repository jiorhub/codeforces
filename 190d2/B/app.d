import std.stdio: readln, writeln;
import std.string: strip;
import std.array: split;
import std.conv: to;
import std.algorithm: min;

/**
 * User: Jior
 * Date: 03.06.13
 * Time: 13:13
 */

void main() {
    auto rgb = strip(readln()).split().to!(int[]);

    auto result = 0;

    result += rgb[0] / 3;
    rgb[0]  = rgb[0] % 3;

    result += rgb[1] / 3;
    rgb[1]  = rgb[1] % 3;

    result += rgb[2] / 3;
    rgb[2]  = rgb[2] % 3;

    result += min(rgb[0], rgb[1], rgb[2]);
    
    writeln(result);
}