function validateSchoolMasterForm() {
	var schoolName = document.getElementById('schoolName').value;
	var ownerName = document.getElementById('ownerName').value;
	var contactNo = document.getElementById('contactNo').value;
	var address = document.getElementById('address').value;
	var adminName = document.getElementById('adminName').value;
	var password = document.getElementById('password').value;
	var cnfrmPassword = document.getElementById('cnfrmPassword').value;
	var adminContactNo = document.getElementById('adminContactNo').value;
	if (schoolName === "") {
		alert("Please enter School Name");
		document.getElementById('schoolName').focus;
		return false;
	} else if (ownerName === "") {
		alert("Please enter Owner Name");
		document.getElementById('ownerName').focus;
		return false;
	} else if (contactNo === "") {
		alert("Please enter Contact No");
		document.getElementById('contactNo').focus;
		return false;
	} else if (address === "") {
		alert("Please enter Address");
		document.getElementById('address').focus;
		return false;
	} else if (adminName === "") {
		alert("Please enter Admin Name");
		document.getElementById('adminName').focus;
		return false;
	} else if (password === "") {
		alert("Please enter Password");
		document.getElementById('password').focus;
		return false;
	} else if (cnfrmPassword === "") {
		alert("Please enter Confirm Password");
		document.getElementById('cnfrmPassword').focus;
		return false;
	} else if (adminContactNo === "") {
		alert("Please enter Admin Contact No.");
		document.getElementById('adminContactNo').focus;
		return false;
	} else {
		return true;
	}

}

function displayBrowsedFile() {
	var fileName = document.getElementById('schoolLogo').files.item(0).name;
	var fileSize = document.getElementById('schoolLogo').files.item(0).size / 1024;
	fileSize = Math.round(fileSize);
	if (fileSize > 2048) {
		document.getElementById('fileNameSize').style.color = 'red';
		document.getElementById('fileNameSize').innerHTML = "Browsed File: "
				+ fileName + " & Size: " + fileSize + "KB";
		document.getElementById('submit').disabled = true;
		alert("Logo Size is more than 2 MB");
		return false;
	} else {
		document.getElementById('fileNameSize').style.color = 'green';
		document.getElementById('fileNameSize').innerHTML = "Browsed File: "
				+ fileName + " & Size: " + fileSize + "KB";
		document.getElementById('submit').disabled = false;
		return true;
	}
}

function checkPassword() {
	if (document.getElementById('password').value == document
			.getElementById('cnfrmPassword').value) {
		document.getElementById('errorMsg').style.color = 'green';
		document.getElementById('errorMsg').innerHTML = 'Password Matched!';
		document.getElementById('submit').disabled = false;
	} else {
		document.getElementById('errorMsg').style.color = 'red';
		document.getElementById('errorMsg').innerHTML = 'Password is not Matching!';
		document.getElementById('submit').disabled = true;
	}
}

function resetSchoolMasterForm() {
	document.getElementById('errorMsg').style.display = "none";
	document.getElementById('schoolName').value = '';
	document.getElementById('ownerName').value = '';
	document.getElementById('contactNo').value = '';
	document.getElementById('address').value = '';
	document.getElementById('adminName').value = '';
	document.getElementById('password').value = '';
	document.getElementById('cnfrmPassword').value = '';
	document.getElementById('adminContactNo').value = '';
}