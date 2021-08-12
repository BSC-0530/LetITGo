window.onload = function() {
	if(document.getElementById("simpleBrowse")) {
		
		const $simpleBrowse = document.getElementById("simpleBrowse");
		$simpleBrowse.onclick = function() {
			location.href = "/simple/browse/select";
		}
	}
}
