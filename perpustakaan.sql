SELECT * FROM dbperpustakaan.tblKaryawan;


-- CREATE: create, insert
CREATE DATABASE dbPerpustakaan;
CREATE TABLE tblBuku(
idBuku INT(10) NOT NULL,
judulBuku VARCHAR(255) NOT NULL,
pengarang VARCHAR(255) NOT NULL,
tahunTerbit CHAR(4) NOT NULL,
jmlHalaman INT(5) NOT NULL,
PRIMARY KEY(idBuku)
);

DROP TABLE tblBuku;

INSERT INTO tblBuku (`judulBuku`, `pengarang`, `penerbit`, `tahunterbit`, `jmlHalaman`)
VALUES ('Matematika', 'Hermawan', 'UTM', '2017', 150);

INSERT INTO tblkaryawan (`namaKaryawan`) VALUES ('Septi Hariani'), ('Riski');


-- READ: filter, order, limit
SELECT idBuku, judulBuku, pengarang, tahunTerbit, jmlHalaman FROM dbperpustakaan.tblBuku
WHERE tahunTerbit >= 2010 ORDER BY jmlHalaman ASC LIMIT 0,3;

SELECT * FROM dbperpustakaan.tblbuku WHERE judulBuku LIKE "%sis%";

-- statusAktif untuk mencegah data dihapus permanen
SELECT idKaryawan, namaKaryawan FROM `dbperpustakaan`.`tblKaryawan` WHERE statusAktif = 1;


-- UPDATE
UPDATE dbperpustakaan.`tblbuku` SET 
judulBuku = 'Logika Matematika', 
penerbit = 'Universitas Lampung',
jmlHalaman = 128
WHERE idBuku = 3;


-- DELETE
DELETE FROM `dbperpustakaan`.`tblkaryawan` WHERE `idKaryawan` = 5;

