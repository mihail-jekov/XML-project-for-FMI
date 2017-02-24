var xml = new ActiveXObject('MSXML.DOMDocument');
xml.appendChild(xml.createProcessingInstruction("xml", "version=\"1.0\" encoding=\"UTF-8\""));

var aircraftCarrier = xml.createElement('aircraft-carrier');
xml.appendChild(aircraftCarrier);
	var name = xml.createElement('name');
	aircraftCarrier.appendChild(name);
	var personel = xml.createElement('personel');
	aircraftCarrier.appendChild(personel);
		var soldier = xml.createElement('soldier');
		personel.appendChild(soldier);
			var firstName = xml.createElement('first-name');
			soldier.appendChild(firstName);
			var lastName = xml.createElement('last-name');
			soldier.appendChild(lastName);
			var gender = xml.createElement('gender');
			soldier.appendChild(gender);
			var position = xml.createElement('position');
			soldier.appendChild(position);
			var age = xml.createElement('age');
			soldier.appendChild(age);
			var religion = xml.createElement('religion');
			soldier.appendChild(religion);
	var aircrafts = xml.createElement('aircraft');
	aircraftCarrier.appendChild(aircrafts);
		var aircraft = xml.createElement('aircraft');
		aircrafts.appendChild(aircraft);
			var model = xml.createElement('model');
			aircraft.appendChild(model);
			var cost = xml.createElement('cost');
			aircraft.appendChild(cost);
			var specifications = xml.createElement('specifications');
			aircraft.appendChild(specifications);
			var crew = xml.createElement('crew');
			specifications.appendChild(crew);
			var range = xml.createElement('range');
			specifications.appendChild(range);
			var weight = xml.createElement('weight');
			specifications.appendChild(weight);
	var battles = xml.createElement('battles');
	aircraftCarrier.appendChild(battles);
		var battle = xml.createElement('battle');
		battles.appendChild(battle);
			var battleName = xml.createElement('battle-name');
			battle.appendChild(battleName);
			var countries = xml.createElement('countries');
			battle.appendChild(countries);
			var country = xml.createElement('country');
			countries.appendChild(country);
			var countryName = xml.createElement('country-name');
			country.appendChild(countryName);
			var population = xml.createElement('population');
			country.appendChild(population);
			var duration = xml.createElement('duration');
			battle.appendChild(duration);
			var description = xml.createElement('description');
			battle.appendChild(description);
			var unitsLost = xml.createElement('units-lost');
			battle.appendChild(unitsLost);
	var manufacturers = xml.createElement('manufacturers');
	aircraftCarrier.appendChild(manufacturers);
		var manufacturer = xml.createElement('manufacturer');
		manufacturers.appendChild(manufacturer);
			var manufacturerName = xml.createElement('manufacturer-name');
			manufacturer.appendChild(manufacturerName);
			var established = xml.createElement('establised');
			manufacturer.appendChild(established);
			var staffCount = xml.createElement('staff-count');
			manufacturer.appendChild(staffCount);
			var revenue = xml.createElement('revenue');
			manufacturer.appendChild(revenue);
	
name.appendChild(xml.createTextNode("��� ����������"));
firstName.appendChild(xml.createTextNode("������"));
lastName.appendChild(xml.createTextNode("�����"));
gender.appendChild(xml.createTextNode("���"));
position.appendChild(xml.createTextNode("�������"));
age.appendChild(xml.createTextNode("57"));
religion.appendChild(xml.createTextNode("����������"));
model.appendChild(xml.createTextNode("BTD Destroyer"));
cost.appendChild(xml.createTextNode("$200000"));
crew.appendChild(xml.createTextNode("1"));
range.appendChild(xml.createTextNode("1098 ��"));
weight.appendChild(xml.createTextNode("5244 ��"));
battleName.appendChild(xml.createTextNode("����� ��� ������"));
countryName.appendChild(xml.createTextNode("��������� ����������� ����"));
population.appendChild(xml.createTextNode("313 �������"));
duration.appendChild(xml.createTextNode("��� ���"));
description.appendChild(xml.createTextNode("������� ��� ����� ������ �� ������ �� 4 ��� 1942 ������ � � ���� �� ���-������������ ������ ����� �� ������� �������� �����. ������ �� ��� ��������� ���������� ���� �� ������, ����� ������� ����� ������. ������� ������ �������� ������ ��� ������� � ����� �����. ����������� ���� �� ������ ���� 4 ����� ��������������, 250 �������� � ���-������� �� ������, � ����� ������� ������������� �� �� ������� ����� ������ �� ��������� �� ��������� �������."));
unitsLost.appendChild(xml.createTextNode("�������� ������ �� ��������� �����"));
manufacturerName.appendChild(xml.createTextNode("������"));	
established.appendChild(xml.createTextNode("1921"));	
staffCount.appendChild(xml.createTextNode("25500"));	
revenue.appendChild(xml.createTextNode("$900 �������"));

xml.save("JS_Generated.xml");