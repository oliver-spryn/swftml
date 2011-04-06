/*
(C) Copyright 2011 and onwards, ForwardFour - All Rights Reserved

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
=============================================================================
Package: swftml
Class: Run
Dependencies: None
Known issues: None

This script is the core of the SWFtml library, which evaluates and prepares 
the given input, then assigns each HTML element category to its respective 
package within this library.
*/

package swftml {
	import flash.display.sprite;
	
	public class Run extends Sprite {
	/*
	 * Here are the list of parameters that are required for operation!!!
	 * 
	 *	Your options include:
	 *	- input (String) : The HTML input to be processed and rendered.
	*/
		public var input:String;
		
	/*
	 * Here are additional paramters which are not required for operation.
	 * These values are simply additional customization options which can be modified to integrate seamlessly into your application.
	 * 
	 *	Your options include:
	 *	[PRODUCTION USE OK]
	 *	- showPreloader (Boolean) : Depending the size and complexity of the "input" string, the HTML may take a few seconds to fully process. Give this variable a boolean value to set whether or not preloading text should be shown while the input is processed.
	 *	- preloaderHTML (String)  : If "showPreloader" is set to true, then provide a text or HTML value to display while the input is being processed.
	 *
	 *	[PRODUCTION USE NOT OK]
	 *	- debugMode (Boolean)     : If the library encounters a non-critical error in the given input, set whether or not a suggestion should be given to aid HTML clean-up.
	*/
		public var showPreloader:Boolean = true;
		public var preloaderHTML:String = '<div align="center">Loading text...</div>';
		
		public var debugMode:Boolean = false;
		
	/*
	 * Here are private variables whose values will only be used by this library in the event of an error.
	 * NOTE: These values can not be modified outside of this file. Change their values here if necessary.
	 *
	 * Your options include:
	 * - parameterError (String) : A text or HTML error message to display when a required parameter was not supplied.
	*/
		private var parameterError:String = '<div align="center">A required parameter has not been supplied for the SWFtml library! Check the &quot;run.as&quot; file inside of the &quot;swftml&quot; for the list of required parameters.</div>';
	
	//The main class's constructor method has nothing to do!
		public function Run():void {
			
		}
		
	/*
	 * This method is where all of the central processing occours. It is responsible for:
	 *	- ensuring that all required parameters have been set
	 *	- break up the HTML tags into individual sections, and distrubute them to their appropriate handlers 
	*/
		public function Build():void {
		//Ensure the all required parameters have been set
			var requiredValues:Array = new Array('input');
			var isValid:Boolean = true;
			
			for(var i:int = 0; i <= requiredValues.length - 1; i++) {
			//A required parameter has not been defined!!!
				if (eval(requiredValues[i]) == null) {
					this.evaluate(this.parameterError);
					break;
				}
			}
			
		//Begin breaking up the HTML tags into individual sections
			var evaluatedInput:RegExp = new RegExp('<([A-Z][A-Z0-9]*)\b[^>]*>(.*?)</\1>');
		}
	}
}