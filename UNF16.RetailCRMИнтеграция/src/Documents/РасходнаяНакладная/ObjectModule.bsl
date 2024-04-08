
#Область ОбработчикиСобытий

&После("ОбработкаПроведения")
Процедура crm_ОбработкаПроведения(Отказ, РежимПроведения)
	Если НЕ Отказ И НЕ ПометкаУдаления И Проведен Тогда
	    Если Заказ <> Документы.ЗаказПокупателя.ПустаяСсылка() Тогда 
			НаборЗаписей = РегистрыНакопления.crm_РезервыТоваров.СоздатьНаборЗаписей(); 
			НаборЗаписей.Отбор.Регистратор.Установить(Заказ);
			НаборЗаписей.Записать();
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры

#КонецОбласти
