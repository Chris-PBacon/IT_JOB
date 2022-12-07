/**
 * 
 */

const div = document.getElementById('mInfo');

const result = document.getElementById('result');

div.addEventListener('click', () => {

	if (result.style.display == "none") {
		result.style.display = "block"
	} else {
		result.style.display = "none";

	}

});

