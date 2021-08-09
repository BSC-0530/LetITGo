window.onload = function() {
	
	if(document.getElementById("paymentMainPage")) {
		const $paymentMainPage = document.getElementById("paymentMainPage");
		$paymentMainPage.onclick = function() {
			location.href = "/letitgo/payment/mainPage";
		}
	}
	
}