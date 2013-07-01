import std.stdio: readln, writeln;
import std.conv: to;
import std.string: strip;
import std.array: split;
import std.algorithm: sort, reverse;

/**
 * User: Jior
 * Date: 04.06.13
 * Time: 17:55
 */

void main(string[] args) {
	int countEls = to!int(strip(readln()));
	long[] els = to!(long[])(strip(readln()).split());
	sort(els);
	reverse(els);

	foreach (i, ref long el; els[1..$]) {
		el += els[i]; 
	}

	writeln(els);

	long result;
	while (countEls > 0) {
		writeln(els[countEls-1]);
		result += els[countEls-1];
		countEls /= 4; 
	}
	writeln(result);
}
