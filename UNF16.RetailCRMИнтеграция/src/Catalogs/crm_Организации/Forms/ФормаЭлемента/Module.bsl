#Область ОбработчикиСобытийФормы

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	Если Объект.ВыгружатьКаталог = Истина Тогда 
		Элементы.ПутьКФайлуКаталога.Видимость = Истина;
		Элементы.ГруппаКаталог.Видимость = Истина;
	Иначе 
		Элементы.ПутьКФайлуКаталога.Видимость = Ложь;
		Элементы.ГруппаКаталог.Видимость = Ложь;
	КонецЕсли;
		
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ПутьКФайлуКаталогаНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	
	Режим = РежимДиалогаВыбораФайла.ВыборКаталога;
	ДиалогОткрытияФайла = Новый ДиалогВыбораФайла(Режим);

	Если ДиалогОткрытияФайла.Выбрать() Тогда
		Объект.ПутьКФайлуКаталога = ДиалогОткрытияФайла.Каталог + "\icml.xml";
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ВыгружатьКаталогПриИзменении(Элемент)
	
	Если Объект.ВыгружатьКаталог = Истина Тогда 
		Элементы.ПутьКФайлуКаталога.Видимость = Истина;
		Элементы.ГруппаКаталог.Видимость = Истина;
	Иначе 
		Элементы.ПутьКФайлуКаталога.Видимость = Ложь;
		Элементы.ГруппаКаталог.Видимость = Ложь;
	КонецЕсли;

КонецПроцедуры

#КонецОбласти
