/* manifest - Makes a Project Fiter compatible manifest
 *
*/
"use strict";

// double slashes or single forward slash
const location  = "C:\\Users\\barry\\Downloads\\___x\\project-fiterv.0.0.1";
// declaration of (independent) variables
const hierarchy = require("./hierarchy.js");
const readline  = require("readline");
const file      = require("fs").createWriteStream("./manifest.xml");

String.prototype.cutBuffer = function () {
	if (this.length !== 2) {
		return this.length = this.substring(this.length, this.length-4);
	};
}

// get user input for place to manifest-ate
if (!location) {
	const rl = readline.createInterface({
		input: process.stdin,
		output: process.stdout
	});
	rl.question("Type the absolute path of the location to manifest" +
				"e.g. C:\\\\Users\\\\myName\\\\Documents", answer => {
		// replace the single slash
		location = require("path").win32.normalize(answer);
		// close it now
	});
}

// pause
while (location === undefined) {
	setTimeout(() => {}, 200)
}

// put everything under a loop
console.log("Loading...");
setTimeout(() => {

	// write header
	file.write(`<?xml version="1.0" encoding="UTF-8" ?>
<!-- This is ALL subject to change
NAMESPACE: manifest, ENCODING: UTF-8,
SITE: https://github.com/dystopian-games/project-fiter/tree/stable/archives -->
<manifest xmlns:manifest="https://github.com/dystopian-games/project-fiter/tree/stable/archives">`);

	// manifestMetaData tag
	file.write("\n		<manifestMetaData>");

	// manifestMetaData closing tag
	file.write("\n		</manifestMetaData>");

	// manifestContents tag
	file.write("\n		<manifestContents>");

	//B/E/G/I/N/D/A/T/A/W/R/I/T/E
	file.write(hierarchy(location));

	// manifestContents closing tag
	file.write("\n    <manifestContents>");

	// manifest closing tag
	file.write("</manifest>")
}, 2000);

// the end
file.on("close", () => {
	console.log("Closing...");
});