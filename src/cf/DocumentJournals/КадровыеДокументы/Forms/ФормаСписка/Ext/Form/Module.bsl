﻿// МОДУЛЬ ФОРМЫ ЖУРНАЛА КадровыеДокументы

&НаКлиенте
Процедура ПодсветитьПодразделение(Команда) 
	
	ДокСсылка = Элементы.Список.ТекущаяСтрока;
	
	ПодсветитьПодразделение_Сервер(ДокСсылка);
	
КонецПроцедуры  

&НаСервере
Процедура ПодсветитьПодразделение_Сервер(ДокСсылка)
	
	УсловноеОформление.Элементы.Очистить();

	ЭлементОформления = УсловноеОформление.Элементы.Добавить();
	ОформлениеЦветФона = ЭлементОформления.Оформление.Элементы.Найти("ЦветФона");
	ОформлениеЦветФона.Значение = WebЦвета.ЗеленыйЛес;
	ОформлениеЦветФона.Использование = Истина;
	ОформлениеЦветТекста = ЭлементОформления.Оформление.Элементы.Найти("ЦветТекста");
	ОформлениеЦветТекста.Значение = WebЦвета.Белоснежный;
	ОформлениеЦветТекста.Использование = Истина;

	Отбор = ЭлементОформления.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	Отбор.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("Список.Подразделение");
	Отбор.ВидСравнения = ВидСравненияКомпоновкиДанных.Равно;
	Отбор.ПравоеЗначение = ДокСсылка.Подразделение;

	ОформляемоеПоле = ЭлементОформления.Поля.Элементы.Добавить();
	ОформляемоеПоле.Поле = Новый ПолеКомпоновкиДанных("Подразделение");
	ОформляемоеПоле.Использование = Истина;	
	
КонецПроцедуры