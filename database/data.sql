INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (1, 'Sneakers', true, 'cat/s.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (2, 'Dress Shoes', true, 'cat/ds.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (3, 'Dress Boots', true, 'cat/db.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (4, 'Heels', false, 'cat/h.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (5, 'High Heels', false, 'cat/hh.jpg');

INSERT INTO shoestore.category(
	catid, nom, ismen, image)
VALUES (6, 'Loafers', false, 'cat/l.jpg');

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
	sid, name, price, image, catid)
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
VALUES (17, 'Auchi', 15, 'w/l/auchi', 6);

INSERT INTO shoestore.shoes(
            sid, name, price, image, catid)
VALUES (18, 'Clarencea', 90, 'w/l/clarencea', 6);
    
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 3,10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 2, 10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (2, 1, 10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (2, 2,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 4,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 5,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (2, 5,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (3, 5,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (2, 6,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (3, 6,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (2, 7,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (2, 8,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (2, 9,  10);

INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 10,  10);
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1,11,  10);
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 12,  10);
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 13,  10);
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 14,  10);
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 15,  10);
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 16,  10);
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 17,  10);
INSERT INTO shoestore.availablesizes(
            sizeid, sid, quantity)
VALUES (1, 18,  10);

INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 2);

    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 1);

    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 3);

    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 4);

INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 5);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 6);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 7);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 8);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 10);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 11);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 12);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 13);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 14);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 15);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 16);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 17);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (1, 18);

 
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 1);

    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 3);

    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 4);

INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 5);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 6);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 7);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 8);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 10);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 11);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 12);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 13);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 14);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 15);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 16);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 17);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (2, 18);

INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 2);

    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 1);

    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 3);

    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 4);

INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 5);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 6);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 7);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 8);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 10);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 11);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 12);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 13);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 14);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 15);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 16);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 17);
    INSERT INTO shoestore.availablecolors(
            colorid, sid)
    VALUES (3, 18);


