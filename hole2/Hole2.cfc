component 
{
	function a (l, d, p) {
		var x = xmlParse(fileRead(l));
		var m = duplicate(x.server.service.engine.host[1]);
		
		m.xmlAttributes.name = d;
		m.context = XmlElemNew(x, 'context');
		m.context[1].XMLAttributes.docBase = p;
		x.server.service.engine.XmlChildren[arrayLen(x.server.service.engine.XmlChildren)+1] = XmlElemNew(x, 'host');
		x.server.service.engine.XMLChildren[arrayLen(x.server.service.engine.XmlChildren)] = m;
		fileWrite(l, toString(x));
	}	
}