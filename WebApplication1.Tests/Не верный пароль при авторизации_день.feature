﻿Feature: Не верный пароль при авторизации_день
# language: ru
# https://my.life-pos.ru/auth/login


@all
Сценарий: Не верный пароль при авторизации_день
#1
Если открыть страницу по относительной ссылке "https://my.life-pos.ru/auth/login"
Тогда открыта форма входа с текстом "Добрый день!Рады снова вас видеть"
#2
Если в поле "Номер телефона" ввести "+7 (969) 709-78-28"
Тогда кнопка "Войти в личный кабинет" не активна
#3
Если в поле "пароль" ввести невалидное значение 
Тогда кнопка "Войти в личный кабинет" активна
#4
Если нажать на кнопку "Войти в личный кабинет"
Тогда отображается ошибка с текстом "Ошибка: Введен неверный номер телефона или пароль"

И конец теста .
