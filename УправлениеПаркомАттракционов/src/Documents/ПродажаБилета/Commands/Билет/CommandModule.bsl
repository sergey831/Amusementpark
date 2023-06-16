
#Область ОбработчикиСобытий

// Обработчик команды печати.
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	//{{_КОНСТРУКТОР_ПЕЧАТИ(Билет)
	ТабДок = Новый ТабличныйДокумент;
	Билет(ТабДок, ПараметрКоманды);

	ТабДок.ОтображатьСетку = Ложь;
	ТабДок.Защита = Ложь;
	ТабДок.ТолькоПросмотр = Ложь;
	ТабДок.ОтображатьЗаголовки = Ложь;
	ТабДок.Показать();
	//}}
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Обработчик команды печати на сервере.
&НаСервере
Процедура Билет(ТабДок, ПараметрКоманды)
	Документы.ПродажаБилета.Билет(ТабДок, ПараметрКоманды);
КонецПроцедуры

#КонецОбласти