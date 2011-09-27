component 
{
	function a (b) {
		return arrayLen(rematch('\S', fileRead(b))); 
	}
}