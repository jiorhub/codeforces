import std.stdio: readln, writeln;
import std.string: strip;
import std.array: split;
import std.conv: to;
import std.algorithm: min, count;

/**
 * User: Jior
 * Date: 03.06.13
 * Time: 13:13
 */

void main() {
    auto rgb = strip(readln()).split().to!(int[]);
    int result = 0;
   	foreach(ref color; rgb) {   		
   		if(color) {
   			if (color % 3) {
   				result += color / 3;
   				color %= 3;	
			} else {
				result += color / 3 - 1;
				color = 3;
			}
   		}
   	}
 	
 	switch(rgb.count(3)) {
 		case 2: 
 			result += 2;
 			break;
 		case 3:
 			result += 3;
 			break;
 		default:
 			result += min(rgb[0], rgb[1], rgb[2]);	
 	}

   	writeln(result);
}