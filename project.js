//=====[ Patches ]=====//

	// preload stuff I guess?
		import "./patches/preload.js";

	// always attempt to break to a new line in a way that preserves a minimum number of words per line
		import "./patches/minwordsperline.js";

	// style choices using tags that appear on the same line
		import "./patches/choicetags.js";

	// click and drag to scroll the page
		import "./patches/dragtoscroll.js";

	// convert markdown to HTML tags
		import "./patches/markdowntohtml.js"

	// scroll down to see new content after clicking a choice
		import "./patches/scrollafterchoice.js";

	// write tags like "#tag" rather than #class: tag"
		import "./patches/shorthandclasstags.js";

	//–––––{ Shortcuts }–––––//

		// import helper patch for binding shortcuts to choices
			import choices from "./patches/shortcuts/choices.js";

			// bind the number keys to choices
				for (var i = 0; i < 9; i++)
					{
						choices.add((i+1).toString(), i, true);
					}

			// bind z, x, and c to the first three shortcuts respectively
				["z", "x", "c"].forEach((key, index) => { choices.add(key, index, true) })

			// bind spacebar to progress the story, provided there's only one choice available
				choices.add(" ", 0, true, true);

//=====[ Story ]=====//

	// create our game
		var story = new Story("The Ballad of the Hungry Piglet.json");