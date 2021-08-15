function moveLocation(intent) {
	
	var movePath = "/jsp";
	
	switch(intent){
		case "/" : movePath += "/"; break;
		case "insertMember" : movePath += "/member/insert"; break;
		case "updateMember" : movePath += "/member/update"; break;
		case "deleteMember" : movePath += "/member/delete"; break;
		case "insertNotice" : movePath += "/notice/insert"; break;
		case "logout" : movePath += "/member/logout"; break;
	}
	
	location.href = movePath;
}