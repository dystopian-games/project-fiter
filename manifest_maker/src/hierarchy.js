const hierarchyfileread  = require("directory-tree");
const path               = require("path");

"use strict";
/* converttoTags - Converts object from package 'directory-tree'
 * to a string conformant to the PF manifest standard
*/
// tabulate - Recieves one number for the amount of tabs
function tabulate(index) {
	let horizTab = "";
	if (index === 0) {
		return horizTab;
	} else {
		horizTab += tabulate(--index);
		return "\t";
	}
}
/*
 * @params objectData - An object that is either a file or directory
 * @params tabindex   - The tab space number, used with 'tabulate'
 * @returns returnString - A string that is comparable to the manifest standard
*/
function converttoDataTag(objectData) {
		// initalise to empty string to avoid undefined beginning
		let returnString = "";
		if (objectData.type === "file") {
				// return a file
				return  `\r\n<data type="file" filename="${objectData.name}"/>`;
		} else {
				// return a directory
				for (let i = 0; objectData.children[i]; i++) {
					// sandwich elements between tags
					returnString += `\r\n<data type="${objectData.type}" filename="${objectData.name}">`;
					// recursive statement
					returnString += converttoDataTag(objectData.children[i]);
					returnString += "\r\n</data>";
				}
				return returnString;
		}
		return returnString;
}

module.exports = directory => {
	// directory tree returns an object with the beginning path
	let data = hierarchyfileread(path.win32.normalize(directory));
	if (!data) throw "Invalid path";
	return converttoDataTag(data);
};
