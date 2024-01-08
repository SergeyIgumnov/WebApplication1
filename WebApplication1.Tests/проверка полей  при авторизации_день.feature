﻿Feature: проверка полей  при авторизации_день
# language: ru
# https://my.life-pos.ru/auth/login


@all
Сценарий: проверка полей  при авторизации_день
#1
Если открыть страницу по относительной ссылке "https://my.life-pos.ru/auth/login"
Тогда открыта форма входа с текстом "Добрый день!Кажется, вы у нас впервые"
#2
Если в поле "Номер телефона" ввести "+7 (911) 111-11-1"
Тогда сообщение об ошибке "Неверный формат" отображается
#3
Если в поле "Номер телефона" нажать на  "Х"
Тогда сообщение об ошибке "Обязательно для заполнения" отображается
#4
Если в поле "Номер телефона" ввести "+7 (911) 111-11-11"
Тогда кнопка сообщение об ошибке не отображается
#5
Если в поле ввода "Ваше имя и фамилия" ввести "тест"
Тогда сообщение об ошибке "Значение должно быть не менее 5 знаков" отображается
#6
Если в поле ввода "Ваше имя и фамилия" ввести " "
Тогда сообщение об ошибке "Значение не может начинаться и заканчиваться пробелом" отображается
#7
Если в поле ввода "Ваше имя и фамилия" нажать на  "Х
Тогда сообщение об ошибке "Обязательно для заполнения" отображается
#8
Если в поле ввода "Ваше имя и фамилия" ввести "№№";%"
Тогда сообщение об ошибке не отображается
И нажать на кнопку "Х"
#9
Если в поле ввода "Ваше имя и фамилия" ввести  "тесто "
Тогда сообщение об ошибке "Значение не может начинаться и заканчиваться пробелом" отображается
#10
Если в поле ввода "Ваше имя и фамилия" ввести  "тесто тестовый"
Тогда сообщение об ошибке не отображается
#11
Если в поле ввода "Пароль" ввести " "
Тогда сообщение об ошибке "Значение не может начинаться и заканчиваться пробелом" отображается
#12
Если в поле ввода "Пароль" ввести "12345"
Тогда сообщение об ошибке "Значение должно быть не менее 6 знаков" отображается
И текст отображается в формате " '''''' "
#13
Если в поле ввода "Пароль" ввести "123456"
Тогда сообщение об ошибке не отображается
И текст отображается в формате " '''''' "
#14
Если в поле ввода "Пароль" нажать на  "глазок"
Тогда в поле ввода пароль отображается
#15
Если в поле ввода "Пароль" нажать на  "Х
Тогда сообщение об ошибке "Обязательно для заполнения" отображается
#16
Если нажать на кнопку "Отправить код"
Тогда поле "Код из SMS" становится активным
#17
Если в поле ввода "Код из SMS" ввести "122-45"
Тогда сообщение об ошибке "Введите код в формате 123-456" отображается
#18
Если поле ввода "Код из SMS" очистить
Тогда сообщение об ошибке "Обязательно для заполнения" отображается
И конец теста .
