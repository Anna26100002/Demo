﻿
&НаКлиенте
Процедура Подключиться(Команда)
	ПодключитьсяНаСервере();
КонецПроцедуры

&НаСервереБезКонтекста
Процедура ПодключитьсяНаСервере()
	ПараметрыСоединения = Новый ПараметрыСоединенияВнешнегоИсточникаДанных; 
	ПараметрыСоединения.СтрокаСоединения= 
	"Driver={Microsoft Excel Driver (*.xls, *.xlsx, *.xlsm, *.xlsb)};DBQ=C:\Обмен\XL5\cars.xlsx;"; 
	//ПараметрыСоединения.СтрокаСоединения= 
	//"Driver={Microsoft Excel Driver (*.xls)};DriverID=790;DBQ=C:\XLS\cars.xls;"; 
	ВнешниеИсточникиДанных.Excel.УстановитьОбщиеПараметрыСоединения(ПараметрыСоединения); 
	ВнешниеИсточникиДанных.Excel.УстановитьСоединение();
		
	Запрос = Новый Запрос();
	
	Запрос.Текст = "ВЫБРАТЬ
	               |	Данные.Car КАК Автомобиль,
	               |	Данные.Body КАК Кузов,
	               |	Данные.Country КАК Страна,
	               |	Данные.Quantity КАК Количество,
	               |	Данные.Amount КАК Сумма
	               |ИЗ
	               |	ВнешнийИсточникДанных.Excel.Таблица.Данные КАК Данные";
	
	ТЗ = Запрос.Выполнить().Выгрузить();
КонецПроцедуры
