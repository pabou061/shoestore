INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (1, 'sneakers', true, 'cat/sneakers.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (2, 'dress shoes', true, 'cat/dress_shoes.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (3, 'dress boots', true, 'cat/dress_boots.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (4, 'heels', false, 'cat/heels.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (5, 'high heels', false, 'cat/high_heels.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (6, 'loafers', false, 'cat/loafers.jpg');

INSERT INTO shoestore.colors(
	colorid, color)
VALUES (1, 'brown');

INSERT INTO shoestore.colors(
	colorid, color)
VALUES (2, 'black');

INSERT INTO shoestore.colors(
	colorid, color)
VALUES (3, 'white');

INSERT INTO shoestore.sizes(
	sizeid, size)
VALUES (1, 7);

INSERT INTO shoestore.sizes(
	sizeid, size)
VALUES (2, 7.5);

INSERT INTO shoestore.sizes(
	sizeid, size)
VALUES (3, 8);

INSERT INTO shoestore.sizes(
	sizeid, size)
VALUES (4, 8.5);

INSERT INTO shoestore.sizes(
	sizeid, size)
VALUES (5, 9);

INSERT INTO shoestore.sizes(
	sizeid, size)
VALUES (6, 9.5);

INSERT INTO shoestore.shoes(
	sid, name, price, image, catid)
VALUES (1, 'Giffoni', 125, 'm/s/giffoni', 1);


INSERT INTO shoestore.shoes(
	sid, name, price, image, catid)
VALUES (2, 'Ceridia', 110, 'm/s/ceridia', 1);

INSERT INTO shoestore.shoes(
	sid, name, prices, image, catid)
VALUES (3, 'Aauwen', 75, 'm/s/aauwen', 1);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (4, 'Municipio', 130, 'm/ds/municipio', 2);


INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (5, 'Bartolello', 120, 'm/ds/bartolello', 2);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (6, 'Ricmann', 120, 'm/ds/ricmann', 2);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (7, 'Fallas', 165, 'm/db/fallas', 3);


INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (8, 'Vianello', 165, 'm/db/vianello', 3);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (9, 'Miraenia', 165, 'm/db/miraenia', 3);
    

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (10, 'Alaska', 85, 'w/h/alaska', 4);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (11, 'Zusien', 65, 'w/h/zusien', 4);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (12, 'Deloris', 65, 'w/h/deloris', 4);
    
INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (13, 'Cartiera', 100, 'w/hh/cartiera', 5);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (14, 'Thiasa', 100, 'w/hh/thiasa', 5);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (15, 'Alicya', 110, 'w/hh/alicya', 5);
    
INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (16, 'Cherryhill', 80, 'w/l/cherryhill', 6);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (17, 'Auchi', 100, 'w/hh/auchi', 6);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (18, 'Clarencea', 90, 'w/hh/clarencea', 6);
    
INSERT INTO shoestore.availableshoes(
            sizeid, colorid, sid, quantity)
VALUES (1, 1, 1, 10);

INSERT INTO shoestore.availableshoes(
            sizeid, colorid, sid, quantity)
VALUES (1, 2, 1, 10);

INSERT INTO shoestore.availableshoes(
            sizeid, colorid, sid, quantity)
VALUES (2, 3, 1, 10);

INSERT INTO shoestore.availableshoes(
            sizeid, colorid, sid, quantity)
VALUES (2, 2, 2, 10);

INSERT INTO shoestore.availableshoes(
            sizeid, colorid, sid, quantity)
VALUES (1, 1, 2, 10);