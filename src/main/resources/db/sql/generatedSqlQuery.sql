
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Смирнов', 'Александр', 'Ааронович', '1979-02-16')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО БЮРО ПРИКЛЮЧЕНИЙ МАГИЯ ГОР', 'БЮРО ПРИКЛЮЧЕНИЙ МАГИЯ ГОР', 7751204770, 1217700422576, '108811, город Москва, г. Московский, ул Москвитина, д. 1, к. 2, кв. 111', 'город Москва, г. Московский, ул Москвитина, д. 1, к. 2, кв. 111', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Иванов', 'Дмитрий', 'Абрамович', '1986-04-27')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ИМПЕРИЯ ОТДЫХА""', '354071, Краснодарский Край, г. Сочи, ул. Гагарина (центральный Р-н), д.72/1 Санкт-Петербург ,ул. Почтамтская, д. 1 литер а, помещение 16н офис 15 город Санкт-Петербург, ул. Почтамтская, д. 1 литер а, помещение 16н офис 15', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Кузнецов', 'Максим', 'Августович', '1971-11-26')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО СПЕКТР', 'СПЕКТР', 1435345612, 1191447012360, '677000, республика Саха /якутия/, г. Якутск, ул. Губина, д. 5, к. 2, кв. 113', 'республика Саха /якутия/, г. Якутск, ул. Губина, д. 5, к. 2, кв. 113', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Соколов', 'Сергей', 'Авдеевич', '1998-02-04')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ВОДНЫЙ МИР""', '681006, Хабаровский Край, г. Комсомольск-На-Амуре, ул. Зейская, д. 8Сочи, ул. Фрунзе (адлерский Р-н), д.21 Краснодарский край, г. Сочи, ул. Фрунзе (адлерский Р-н), д.21', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Попов', 'Андрей', 'Аверьянович', '1980-07-16')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО АНО ПРЕМЬЕР', 'АНО ПРЕМЬЕР', 7456052590, 1237400017216, '350062, Краснодарский Край, г Краснодар, ул Эльбрусская, д. 1а, офис 105', 'Краснодарский Край, г Краснодар, ул Эльбрусская, д. 1а, офис 105', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Лебедев', 'Алексей', 'Адамович', '1987-09-15')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "АГЕНТСТВО АПЭК""', '141707, Московская область, г. Долгопрудный, ул. Молодежная, д. 4, кв. 106ул. 50 Лет Ссср, д.76 Воронежская Область, г. Россошь, ул. 50 Лет Ссср, д.76', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Козлов', 'Артём', 'Адрианович', '1975-02-21')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ТК САХАЛИНСКИЕ КАНИКУЛЫ', 'САХАЛИНСКИЕ КАНИКУЛЫ', 6501311488, 1206500005755, '93904, Сахалинская Область, г Южно-Сахалинск, ул Им. Б.п. Полевого, д. 10, кв. 15', 'Сахалинская Область, г Южно-Сахалинск, ул Им. Б.п. Полевого, д. 10, кв. 15', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Новиков', 'Илья', 'Акимович', '1975-02-14')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"АНО "БЕРИНГ""', '684014, Камчатский Край, Елизовский р-н, п. Красный, ул. Шоссейная, д. 28д. 26 к. 2 кв. 440 город Москва, ул. Перерва, д. 26 к. 2 кв. 440', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Морозов', 'Кирилл', 'Аксёнович', '1989-09-30')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО РЕЛИЗ ВОЯЖ', 'РЕЛИЗ ВОЯЖ', 7743173172, 1167746865582, '142450, Московская область, г. Старая Купавна, ул. Трудовая, д. 19, кв. 36', 'Московская область, г. Старая Купавна, ул. Трудовая, д. 19, кв. 36', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Петров', 'Михаил', 'Александрович', '1986-05-08')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО" ФЛАГМАН""', '385000, Республика Адыгея (адыгея), г. Майкоп, ул. Крестьянская, д. 213, офис 208 аул. Мира, д. 25а, кв. 42 Саратовская область, г. Саратов, ул. Мира, д. 25а, кв. 42', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Волков', 'Никита', 'Алексеевич', '1972-11-07')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ТУРАГЕНТСТВО САМАНТА', 'ТУРАГЕНТСТВО САМАНТА', 4025047470, 1024000938213, '249034, Калужская Область, г. Обнинск, ул. Гагарина, д.11', 'Калужская Область, г. Обнинск, ул. Гагарина, д.11', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Соловьёв', 'Матвей', 'Анатольевич', '1991-02-16')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО ТК "ИСТОРИИ СИБИРИ""', '662541, Красноярский Край, г. Лесосибирск, Прохладный пер., д. 526 к. 9 кв. 372  Г.санкт-Петербург, ул. Белградская, д. 26 к. 9 кв. 372', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Васильев', 'Роман', 'Андреевич', '1985-08-03')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ГУДВЭЙ', 'ГУДВЭЙ', 1655410810, 1181690097610, '420111, Республика Татарстан (татарстан), г. Казань, ул. Гаяза Исхаки, д. 1, помещ. 1000,офис 7,этаж 1', 'Республика Татарстан (татарстан), г. Казань, ул. Гаяза Исхаки, д. 1, помещ. 1000,офис 7,этаж 1', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Зайцев', 'Егор', 'Андроникович', '1979-09-03')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "БЮРО ПУТЕШЕСТВИЙ И ЭКСКУРСИЙ "КРАСНОДАРЪ""', '350040, Краснодарский Край, г. Краснодар, ул. Ставропольская, д. 224, к. 1, кв. 24пр-кт Юных Пионеров, д. 120 кв. 14 Самарская Область, г. Самара, пр-кт Юных Пионеров, д. 120 кв. 14', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Павлов', 'Арсений', 'Анисимович', '1993-10-26')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО МЕДТУР', 'МЕДТУР', 3849074150, 1193850021067, '664035, Иркутская область, г. Иркутск, ул. Глеба Успенского, д. 6/2, кв. 38', 'Иркутская область, г. Иркутск, ул. Глеба Успенского, д. 6/2, кв. 38', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Семёнов', 'Иван', 'Антипович', '2000-09-03')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ЦМСП СПУТНИК""', '664025, Иркутская Область, г. Иркутск, ул. Чкалова, д.39', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Голубев', 'Денис', 'Антонович', '1980-02-02')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО КАМЧАТВИЗИТ', 'КАМЧАТВИЗИТ', 4101161788, 1144101000339, '683024, Камчатский край, г. Петропавловск-Камчатский, пр-кт Рыбаков, д.15/1, кв.13', 'Камчатский край, г. Петропавловск-Камчатский, пр-кт Рыбаков, д.15/1, кв.13', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Виноградов', 'Евгений', 'Ануфриевич', '1977-04-12')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ПАТРИОТ-38""', '664009, Иркутская Область, г. Иркутск, ул. Ширямова, д. 38  с Малая Пурга, пл Победы, д. 1 Удмуртская Республика, Малопургинский Район, с Малая Пурга, пл Победы, д. 1', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Богданов', 'Даниил', 'Аркадьевич', '1977-03-22')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ЕС – ТУР', 'ЕС - ТУР', 1901058400, 1031900522884, '655001, Республика Хакасия, г. Абакан, пр-кт Дружбы Народов, д.3а, кв.201', 'Республика Хакасия, г. Абакан, пр-кт Дружбы Народов, д.3а, кв.201', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Воробьёв', 'Тимофей', 'Арсенович', '1994-08-05')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ПРИОРИТЕТ""', '170100, Тверская область, г. Тверь, Тверской пр-кт, д. 6, офис 1064313104816 1024300823370 612600 Кировская Область, г. Котельнич, ул Володарского, д. 10 Кировская Область, г. Котельнич, ул Володарского, д. 10', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Фёдоров', 'Владислав', 'Арсеньевич', '1978-11-09')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ВИД', 'ВИД', 4101184577, 1184101002590, '683015, Камчатский край, г. Петропавловск-Камчатский, ул. Днепровская, д. 2', 'Камчатский край, г. Петропавловск-Камчатский, ул. Днепровская, д. 2', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Михайлов', 'Игорь', 'Артёмович', '1971-09-24')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "НИКОЛЬСКАЯ СЛОБОДА""', '171571, Тверская область, г. Калязин, ул. Школьная, д. 33ул. Гагарина (центральный Р-н), д.72/1 Краснодарский Край, г. Сочи, ул. Гагарина (центральный Р-н), д.72/1', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Беляев', 'Владимир', 'Артемьевич', '1989-12-24')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ЛАТИНАТРЕВЕЛ', 'ЛАТИНАТРЕВЕЛ', 9709018727, 5177746306821, '121471, город Москва, пер 2-й Петра Алексеева, д. 2, стр. 1, офис 26', 'город Москва, пер 2-й Петра Алексеева, д. 2, стр. 1, офис 26', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Тарасов', 'Павел', 'Артурович', '1995-09-06')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ОСТРОВ СОЛНЦА""', '445031, Самарская Область, г. Тольятти, б-р Татищева, д.21, кв.116ул. Абрикосовая (центральный Р-н), д. 19 кв. 133 Краснодарский край, г. Сочи, ул. Абрикосовая (центральный Р-н), д. 19 кв. 133', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Белов', 'Руслан', 'Архипович', '1973-10-08')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО СИБТУР', 'СИБТУР', 2465162544, 1172468018667, '660132, Красноярский Край, г. Красноярск, ул. Славы, д. 9, кв. 64', 'Красноярский Край, г. Красноярск, ул. Славы, д. 9, кв. 64', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Комаров', 'Марк', 'Афанасьевич', '1975-11-25')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ТЭК "ОГОНЕК""', '354200, Краснодарский край, г. Сочи, ул. Станичная (лазаревский Р-н), д. 33ул. Зейская, д. 8 Хабаровский Край, г. Комсомольск-На-Амуре, ул. Зейская, д. 8', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Орлов', 'Константин', 'Ахматович', '1976-08-09')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('СП АО ШВЕЙЦАРСКИЙ ЦЕНТР', 'ШВЕЙЦАРСКИЙ ЦЕНТР', 7825338019, 1037843067547, '191025, город Санкт-Петербург, ул. Марата, д. 11, литер в, помещ. 9-н', 'город Санкт-Петербург, ул. Марата, д. 11, литер в, помещ. 9-н', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Киселёв', 'Тимур', 'Батькович', '1979-12-05')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"АНО "СОБЫТИЕ""', '"170006, Тверская Область, г. Тверь, ул. Дмитрия Донского, д. 35 "а", неж. Пом. 5"ул. Молодежная, д. 4 кв. 106 Московская область, г. Долгопрудный, ул. Молодежная, д. 4 кв. 106', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Макаров', 'Олег', 'Бедросович', '1972-07-03')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО КОРОЛЕВСКИЙ ВОЯЖ', 'КОРОЛЕВСКИЙ ВОЯЖ', 7107125439, 1187154005796, '300012, Тульская область, г. Тула, ул. Михеева, д. 27, кв. 31', 'Тульская область, г. Тула, ул. Михеева, д. 27, кв. 31', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Андреев', 'Ярослав', 'Бенедиктович', '1979-06-08')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "АУДИОГОРОД""', '119071, Г.москва, ул. Малая Калужская, д. 15, стр. 1п. Красный, ул. Шоссейная, д. 28 Камчатский Край, Елизовский р-н, п. Красный, ул. Шоссейная, д. 28', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Ковалёв', 'Антон', 'Богданович', '1976-10-12')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ГИ', 'ГИ', 7706457497, 1187746813220, '119180, Г.москва, ул Большая Полянка, д. 51а/9, э 8 пом i к 1 оф 84', 'Г.москва, ул Большая Полянка, д. 51а/9, э 8 пом i к 1 оф 84', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Ильин', 'Николай', 'Бориславич', '1998-02-24')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "НОРД-ВЕСТ""', '186790, республика Карелия, г. Сортавала, Выборгское ш., д. 66Туристический пр-д, д. 10 кв. 8 Камчатский край, г. Петропавловск-Камчатский, Туристический пр-д, д. 10 кв. 8', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Гусев', 'Глеб', 'Бориславович', '1989-11-20')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ТВЕРЬ-ТУР', 'ТВЕРЬ-ТУР', 6950212195, 1176952017770, '170016, Тверская область, г. Тверь, Бурашевское ш., д. 64, помещ. 23', 'Тверская область, г. Тверь, Бурашевское ш., д. 64, помещ. 23', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Титов', 'Данил', 'Борисович', '1989-06-10')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ВИП-МАСТЕР""', '186790, республика Карелия, г. Сортавала, Выборгское ш., д. 66Иркутск, ул. Лермонтова, д. 126а, кабинет а-201 Иркутская область, г. Иркутск, ул. Лермонтова, д. 126а, кабинет а-201', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Кузьмин', 'Савелий', 'Борисыч', '1990-05-24')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО АЙВИСТА ТУР', 'АЙВИСТА ТУР', 7707668902, 1087746799425, '117452, город Москва, Балаклавский пр-кт, д.28в-стр.а', 'город Москва, Балаклавский пр-кт, д.28в-стр.а', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Кудрявцев', 'Вадим', 'Брониславович', '1989-07-24')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ДАНКАМ ХОЛДИНГ""', '368530, республика Дагестан, Карабудахкентский р-н, с Карабудахкент, ул. Магомеда Абужаева, д. 4ул. Чкалова, д.39 Иркутская Область, г. Иркутск, ул. Чкалова, д.39', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Баранов', 'Степан', 'Ваганович', '1978-12-07')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО ВИТА', 'ВИТА', 404008453, 1110404000453, '649473, Республика Алтай, Усть-Коксинский р-н, с. Тюнгур, ул. Заречная, д.1', 'Республика Алтай, Усть-Коксинский р-н, с. Тюнгур, ул. Заречная, д.1', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Куликов', 'Юрий', 'Вадимович', '1995-01-06')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ГРАНД - ТУР""', '308024, Белгородская Область, г Белгород, ул Королева, д. 7Апгт Красная Поляна, ул. Защитников Кавказа, д.62 Краснодарский Край, г. Сочи, пгт Красная Поляна, ул. Защитников Кавказа, д.62', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Алексеев', 'Богдан', 'Валентинович', '1980-08-06')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('АНО САТ ОКНО В МИР', 'ОКНО В МИР', 2801258372, 1202800005077, '675004, Амурская Область, г. Благовещенск, ул. Шимановского, д. 27, офис 207', 'Амурская Область, г. Благовещенск, ул. Шимановского, д. 27, офис 207', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Степанов', 'Артур', 'Валерианович', '1996-03-17')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "НОВАЯ ЖИЗНЬ""', '680020, Хабаровский край, г. Хабаровск, пер. Дзержинского, д. 3, офис 8Тверской пр-кт, д. 6 офис 106 Тверская область, г. Тверь, Тверской пр-кт, д. 6 офис 106', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Яковлев', 'Семен', 'Валерьевич', '1990-02-27')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "КАМА-ТРЭВЕЛ"', '"КАМА-ТРЭВЕЛ"', 5947015660, 1065947008357, '614068, Пермский Край, г. Пермь, ул. Ленина, д.72, к.б, кв.2', 'Пермский Край, г. Пермь, ул. Ленина, д.72, к.б, кв.2', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Сорокин', 'Макар', 'Валерьянович', '1984-01-28')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ИНТЕРАКТИВ-СПБ""', '198152, город Санкт-Петербург, ул. Краснопутиловская, д. 20, литер а, кв. 59Панфиловцев, д. 3 к. 1 кв. 289 город Москва, ул. Героев Панфиловцев, д. 3 к. 1 кв. 289', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Сергеев', 'Лев', 'Васильевич', '1995-01-19')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('ООО «ГОРОДСКИЕ ЭКСКУРСИИ»', '«ГОРОДСКИЕ ЭКСКУРСИИ»', 7838084964, 1197847053227, '190000, город Санкт-Петербург, ул. Почтамтская, д. 1, литер а, помещение 16н офис 15', 'город Санкт-Петербург, ул. Почтамтская, д. 1, литер а, помещение 16н офис 15', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Романов', 'Виктор', 'Вахтангович', '1988-03-24')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ЦЕНТР ЭКСКУРСИЙ И ТУРИЗМА""', '672027, Забайкальский край, г. Чита, ул. Токмакова, д. 4, кв. 1808 к. 1 кв. 62 Г.санкт-Петербург, ул. Ленская, д. 8 к. 1 кв. 62', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Захаров', 'Елисей', 'Венедиктович', '2000-08-24')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "МАКРИС"', 'МАКРИС', 2317033150, 1022302719460, ' 354340, Краснодарский край, г. Сочи, ул. Фрунзе (адлерский Р-н), д.21', 'Краснодарский край, г. Сочи, ул. Фрунзе (адлерский Р-н), д.21', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Борисов', 'Виталий', 'Вениаминович', '1988-07-29')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "КАЗАНТРИП""', '420133, республика Татарстан, г. Казань, ул. Четаева, д.4, кв.22ул. Им Дышлового, д.28 Волгоградская область, г. Волгоград, ул. Им Дышлового, д.28', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Королёв', 'Вячеслав', 'Викентьевич', '1983-02-07')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО"ДОН-ДОСУГ"', '"ДОН-ДОСУГ"', 3624003664, 1033664509108, '396650, Воронежская Область, г. Россошь, ул. 50 Лет Ссср, д.76', 'Воронежская Область, г. Россошь, ул. 50 Лет Ссср, д.76', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Герасимов', 'Захар', 'Викторович', '1995-04-01')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО"АЛСУ 5""', '298403, Республика Крым, г. Бахчисарай, Садовый пер., д. 12п Кутурчин, ул Пионерская, д. 12 Красноярский край, Партизанский р-н, п Кутурчин, ул Пионерская, д. 12', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Пономарёв', 'Мирон', 'Виленович', '1990-05-06')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "СВО ТРЭВЕЛ ГРУПП"', '"СВО ТРЭВЕЛ ГРУПП"', 7723884322, 1137746878818, '109651, город Москва, ул. Перерва, д. 26, к. 2, кв. 440', 'город Москва, ул. Перерва, д. 26, к. 2, кв. 440', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Григорьев', 'Дамир', 'Вилорович', '1980-04-02')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "АИЛ""', '649113, Республика Алтай, Майминский р-н, с. Манжерок, ул. Дружбы, д. 77ул. Свободы, д.2 Ярославская Область, г. Ярославль, ул. Свободы, д.2', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Лазарев', 'Георгий', 'Виссарионович', '1973-09-25')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "САРАТОВ ИСТОРИЧЕСКИЙ"', '"САРАТОВ ИСТОРИЧЕСКИЙ"', 6453144516, 1156451032528, '410033, Саратовская область, г. Саратов, ул. Мира, д. 25а, кв. 42', 'Саратовская область, г. Саратов, ул. Мира, д. 25а, кв. 42', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Медведев', 'Давид', 'Витальевич', '1973-04-05')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"АНО ИМ "ТОМСКАЯ БЕРЕСТА""', '634040, Томская Область, г. Томск, ул. Владимира Высоцкого, д. 28, стр. 4, помещ. 2019Прохладный пер., д. 5 Красноярский Край, г. Лесосибирск, Прохладный пер., д. 5', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Ершов', 'Платон', 'Владиленович', '1988-12-11')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ИНТЕРКОН"', '"ИНТЕРКОН"', 7816326786, 1167847197044, '192212, Г.санкт-Петербург, ул. Белградская, д. 26, к. 9, кв. 372', ' Г.санкт-Петербург, ул. Белградская, д. 26, к. 9, кв. 372', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Никитин', 'Анатолий', 'Владимирович', '1991-08-14')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "АПРИОРИ""', '440072, Пензенская Область, г. Пенза, ул. Антонова, д. 17-а, кв. 92Майкоп, ул. Крестьянская, д. 213 офис 208 а Республика Адыгея (адыгея), г. Майкоп, ул. Крестьянская, д. 213 офис 208 а', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Соболев', 'Григорий', 'Владиславович', '1984-11-18')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"АССОЦИАЦИЯ "СОТА"', '"СОТА"', 6319248977, 1206300055620, '443035, Самарская Область, г. Самара, пр-кт Юных Пионеров, д. 120, кв. 14', 'Самарская Область, г. Самара, пр-кт Юных Пионеров, д. 120, кв. 14', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Рябов', 'Демид', 'Владленович', '1970-06-27')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ПАСПАРТУ""', '630024, Новосибирская область, г. Новосибирск, ул. Беловежская, д. 8, кв. 87Осипенко р-н, п. Херпучи, ул. Центральная, д. 1 кв. 1 Хабаровский край, Имени Полины Осипенко р-н, п. Херпучи, ул. Центральная, д. 1 кв. 1', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Поляков', 'Данила', 'Власович', '1989-01-12')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ТЕЛЕЦКАЯ ГАВАНЬ"', '"ТЕЛЕЦКАЯ ГАВАНЬ"', 407008300, 1100407000154, '"649154, республика Алтай, Турочакский р-н, с Артыбаш, турбаза "юрток"', '"республика Алтай, Турочакский р-н, с Артыбаш, турбаза "юрток"', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Цветков', 'Станислав', 'Вольфович', '1990-05-14')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "БОЛЬШОЙ НАЙДАН""', '452941, республика Башкортостан, Краснокамский р-н, д Кузгово, ул. Центральная, д. 17ул. Карпенко, д. 5 кв. 12 Челябинская Область, г. Чебаркуль, ул. Карпенко, д. 5 кв. 12', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Данилов', 'Василий', 'Всеволодович', '1996-04-30')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"МАУ "ЦЕНТР ТЮРАГАЙ"', '"ЦЕНТР ТЮРАГАЙ"', 1821011318, 1131821000541, '427820, Удмуртская Республика, Малопургинский Район, с Малая Пурга, пл Победы, д. 1', 'Удмуртская Республика, Малопургинский Район, с Малая Пурга, пл Победы, д. 1', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Жуков', 'Федор', 'Вячеславович', '1979-08-01')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ТТК "ПИРАМИДА""', '653039, область Кемеровская Область - Кузбасс, г. Прокопьевск, ул. Ноградская, д. 19, офис 207', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Фролов', 'Родион', 'Гавриилович', '1983-01-23')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('МБУ ЦЕНТР ОТДЫХА И ТУРИЗМА', 'ЦЕНТР ОТДЫХА И ТУРИЗМА', 4313104816, 1024300823370, '612600, Кировская Область, г. Котельнич, ул Володарского, д. 10', 'Кировская Область, г. Котельнич, ул Володарского, д. 10', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Журавлёв', 'Леонид', 'Гаврилович', '1979-05-03')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "БАРКО МАРИНЕРО""', '127051, город Москва, Цветной б-р, д. 30, стр. 1, пом 7 ком 16б оф 3б', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Николаев', 'Одиссей', 'Гаджиевич', '1989-09-05')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ИМПЕРИЯ ОТДЫХА"', '"ИМПЕРИЯ ОТДЫХА"', 2320117347, 1032311698451, '354071, Краснодарский Край, г. Сочи, ул. Гагарина (центральный Р-н), д.72/1', 'Краснодарский Край, г. Сочи, ул. Гагарина (центральный Р-н), д.72/1', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Крылов', 'Валерий', 'Геннадиевич', '1983-12-22')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"НП "ТУРИСТЫ АМУРА""', '675000, Амурская Область, г. Благовещенск, ул. Б.хмельницкого, д.21', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Максимов', 'Святослав', 'Геннадьевич', '1977-03-02')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ФИС ТУР"', '"ФИС ТУР"', 6949011952, 1136952019489, '354003, Краснодарский край, г. Сочи, ул. Абрикосовая (центральный Р-н), д. 19, кв. 133', 'Краснодарский край, г. Сочи, ул. Абрикосовая (центральный Р-н), д. 19, кв. 133', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Сидоров', 'Борис', 'Генрихович', '1970-05-28')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ЭДЕМ-ТУР""', '427971, Удмуртская Республика, г. Сарапул, ул Новая (дубровка Ж/р), д. 6', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Осипов', 'Эдуард', 'Георгиевич', '1981-09-16')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ВОДНЫЙ МИР"', '"ВОДНЫЙ МИР"', 2703083325, 1152703001230, '681006, Хабаровский Край, г. Комсомольск-На-Амуре, ул. Зейская, д. 8', 'Хабаровский Край, г. Комсомольск-На-Амуре, ул. Зейская, д. 8', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Белоусов', 'Марат', 'Герасимович', '1998-12-14')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ПРОЕКТ РЕТРОПОЕЗД""', '119454, город Москва, ул. Удальцова, д. 79, кв. 104', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Федотов', 'Герман', 'Германович', '1990-11-05')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "АГЕНТСТВО АПЭК"', 'АПЭК', 5008046285, 1085047001610, '141707, Московская область, г. Долгопрудный, ул. Молодежная, д. 4, кв. 106', 'Московская область, г. Долгопрудный, ул. Молодежная, д. 4, кв. 106', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Дорофеев', 'Даниэль', 'Гертрудович', '1998-09-04')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ГЛОРИЯ""', '354000, Краснодарский Край, г. Сочи, ул. Горького (центральный Р-н), д.43', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Егоров', 'Петр', 'Глебович', '1971-12-18')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"АНО "БЕРИНГ"', 'БЕРИНГ', 4105127026, 1204100002204, '684014, Камчатский Край, Елизовский р-н, п. Красный, ул. Шоссейная, д. 28', 'Камчатский Край, Елизовский р-н, п. Красный, ул. Шоссейная, д. 28', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Матвеев', 'Амир', 'Гордеевич', '1992-10-10')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ВОЛОНТЕР""', '127055, город Москва, ул. Лесная, д.45а, стр.2', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Бобров', 'Всеволод', 'Григорьевич', '1996-12-05')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ПАСИФИКА ГРУПП"', '"ПАСИФИКА ГРУПП"', 4101178982, 1174101011402, '683024, Камчатский край, г. Петропавловск-Камчатский, Туристический пр-д, д. 10, кв. 8', 'Камчатский край, г. Петропавловск-Камчатский, Туристический пр-д, д. 10, кв. 8', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Дмитриев', 'Мирослав', 'Гурьевич', '1997-08-08')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('ООО «ПРИСТАНЬ РЫБАКА»', '680000, Хабаровский край, г. Хабаровск, ул. Дикопольцева, д. 48, кв. 6', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Калинин', 'Гордей', 'Давидович', '1986-05-06')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "СОЛНЕЧНЫЙ ВЕТЕР"', 'СОЛНЕЧНЫЙ ВЕТЕР', 3812524740, 1183850029527, '664033, Иркутская область, г. Иркутск, ул. Лермонтова, д. 126а, кабинет а-201', 'Иркутская область, г. Иркутск, ул. Лермонтова, д. 126а, кабинет а-201', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Анисимов', 'Артемий', 'Давыдович', '1997-08-05')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "НЕВО-БАЛТ РИВА""', '199106, город Санкт-Петербург, пл. Морской Славы, д. 1, литер а, офис 307-3', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Петухов', 'Эмиль', 'Даниилович', '1971-02-10')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ЦМСП СПУТНИК"', '"ЦМСП СПУТНИК"', 3808054531, 1023801027942, '664025, Иркутская Область, г. Иркутск, ул. Чкалова, д.39', 'Иркутская Область, г. Иркутск, ул. Чкалова, д.39', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Антонов', 'Назар', 'Данилович', '1973-09-25')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ПРИИСКОВЫЙ""', '660022, Красноярский край, г. Красноярск, ул. Партизана Железняка, д. 21 а, кв. 115', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Тимофеев', 'Савва', 'Демидович', '1978-11-10')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "БЕРКУТ"', '"БЕРКУТ"', 2317037772, 1032309871109, '354392, Краснодарский Край, г. Сочи, пгт Красная Поляна, ул. Защитников Кавказа, д.62', 'Краснодарский Край, г. Сочи, пгт Красная Поляна, ул. Защитников Кавказа, д.62', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Никифоров', 'Ян', 'Демьянович', '1974-02-24')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"АНО "ТУРКЛУБ "ВЕРСТА""', '390545, Рязанская Область, Рязанский р-н, с. Шумашь, ул. Свободы, д. 33', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Веселов', 'Рустам', 'Денисович', '1981-11-28')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ПРИОРИТЕТ"', '"ПРИОРИТЕТ"', 6950197860, 1166952069426, '170100, Тверская область, г. Тверь, Тверской пр-кт, д. 6, офис 106', 'Тверская область, г. Тверь, Тверской пр-кт, д. 6, офис 106', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Филиппов', 'Игнат', 'Димитриевич', '1994-07-06')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ПЕТЕРБУРГСКИЙ ВЕРНИСАЖ""', '196158, город Санкт-Петербург, ул. Ленсовета, д. 78, литер а, кв. 8', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Марков', 'Влад', 'Дмитриевич', '1974-02-14')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ЧАЙКА ДЖОНАТАН"', '"ЧАЙКА ДЖОНАТАН"', 7733317516, 1177746187871, '125480, город Москва, ул. Героев Панфиловцев, д. 3, к. 1, кв. 289', 'город Москва, ул. Героев Панфиловцев, д. 3, к. 1, кв. 289', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Большаков', 'Альберт', 'Дорофеевич', '1976-04-07')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ТУРНЕ РУС""', '198328, город Санкт-Петербург, ул. Доблести, д.26, к.2, кв.79', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Суханов', 'Тамерлан', 'Евгеньевич', '1984-12-31')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "УДИВИТЕЛЬНАЯ РУСЬ"', '"УДИВИТЕЛЬНАЯ РУСЬ"', 7806541760, 1187847124024, '195426, Г.санкт-Петербург, ул. Ленская, д. 8, к. 1, кв. 62', 'Г.санкт-Петербург, ул. Ленская, д. 8, к. 1, кв. 62', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Миронов', 'Айдар', 'Евграфович', '1975-08-14')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "БИО РЕСУРС""', '359010, республика Калмыкия, Яшалтинский р-н, с Яшалта, ул. Трудовая, д.7, кв.1', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Ширяев', 'Роберт', 'Евдокимович', '1975-06-21')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ОНИКС"', 'ОНИКС', 3443087221, 1083443005645, '400094, Волгоградская область, г. Волгоград, ул. Им Дышлового, д.28', 'Волгоградская область, г. Волгоград, ул. Им Дышлового, д.28', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Александров', 'Адель', 'Евсеевич', '2000-07-11')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"АНО "ГУБЕРНСКОЕ КРАЕВЕДЧЕСКОЕ ОБЩЕСТВО""', '141309, Московская Область, Рабочий туп., д. 12', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Коновалов', 'Марсель', 'Евстигнеевич', '1999-11-11')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ГЕОСФЕРА"', '"ГЕОСФЕРА"', 2464153385, 1202400019392, '663508, Красноярский край, Партизанский р-н, п Кутурчин, ул Пионерская, д. 12', 'Красноярский край, Партизанский р-н, п Кутурчин, ул Пионерская, д. 12', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Шестаков', 'Ильдар', 'Егорович', '1975-11-28')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"АНО "ЦЕНТР РАЗВИТИЯ КУЛЬТУРЫ НАРОДОВ СЕВЕРА""', '445042, Самарская Область, г. Тольятти, пр-кт Степана Разина, д. 19, кв. 24', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Казаков', 'Самир', 'Елизарович', '1998-09-06')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ЯБПИЭ"', '"ЯБПИЭ"', 7606003637, 1027600840222, '150000, Ярославская Область, г. Ярославль, ул. Свободы, д.2', 'Ярославская Область, г. Ярославль, ул. Свободы, д.2', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Ефимов', 'Тихон', 'Елисеевич', '1978-05-04')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('АНО «ПУТЬ К СВ. СЕРГИЮ»', '141304, Московская Область, пр-кт Красной Армии, д. 127А', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Денисов', 'Рамиль', 'Емельянович', '1996-04-10')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО ТК "ИСТОРИИ СИБИРИ"', '"ИСТОРИИ СИБИРИ"', 2454026980, 1172468029095, '662541, Красноярский Край, г. Лесосибирск, Прохладный пер., д. 5', 'Красноярский Край, г. Лесосибирск, Прохладный пер., д. 5', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Громов', 'Ринат', 'Еремеевич', '1986-01-13')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ШИКРДК""', '359300, Республика Калмыкия, Юстинский р-н, п. Цаган Аман, ул. Аюки-Хана, д. 17 в', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Фомин', 'Радмир', 'Ермилович', '1984-06-19')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ФЛАГМАН"', '"ФЛАГМАН"', 105059266, 1090105002019, '385000, Республика Адыгея (адыгея), г. Майкоп, ул. Крестьянская, д. 213, офис 208 а', 'Республика Адыгея (адыгея), г. Майкоп, ул. Крестьянская, д. 213, офис 208 а', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Давыдов', 'Филипп', 'Ермолаевич', '1975-08-02')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ПРЕСТИЖ-ТУР""', '603159, Нижегородская область, г. Нижний Новгород, ул. Карла Маркса, д. 38, кв. 6', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Мельников', 'Арсен', 'Ерофеевич', '1981-08-04')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"ООО "ВИРСАВИЯ"', '"ВИРСАВИЯ"', 2723166890, 1132723007548, '682392, Хабаровский край, Имени Полины Осипенко р-н, п. Херпучи, ул. Центральная, д. 1, кв. 1', 'Хабаровский край, Имени Полины Осипенко р-н, п. Херпучи, ул. Центральная, д. 1, кв. 1', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Щербаков', 'Ростислав', 'Ефимович', '1983-05-30')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "НЕВАКРУИЗ""', '195196, Г.санкт-Петербург, ул. Гранитная, д. 18, литер а, кв. 57', (select id from branch_head), (select id from organisations_));
WITH
     organization_ceo AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Блинов', 'Святогор', 'Ефимьевич', '1994-02-02')
             RETURNING id),
     organisations_ AS (
         INSERT INTO organisations (full_name, short_name, inn, ogrn, mailing_address, legal_address, ceo_id)
             VALUES ('"АНО ЧТКЦ "КОВЧЕГ"', '"КОВЧЕГ"', 7415096503, 1177400000029, '456440, Челябинская Область, г. Чебаркуль, ул. Карпенко, д. 5, кв. 12', 'Челябинская Область, г. Чебаркуль, ул. Карпенко, д. 5, кв. 12', (select id from organization_ceo))
             RETURNING id),
     branch_head AS (
         INSERT INTO persons (last_name, first_name, middle_name, birth_date) VALUES ('Колесников', 'Яромир', 'Ефремович', '1981-03-19')
             RETURNING id)
         INSERT INTO branch (name, mailing_address, head_id, organisation_id)
                VALUES ('"ООО "ЯКУТ""', '453365, Республика Башкортостан, Куюргазинский р-н, с. Новомурапталово, ул. Парковая, д. 10', (select id from branch_head), (select id from organisations_));
