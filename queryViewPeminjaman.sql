SELECT
    `tblpeminjaman`.`idPeminjaman`
    , `tblpeminjaman`.`idBuku`
    , `tblbuku`.`judulBuku`
    , `tblbuku`.`pengarang`
    , `tblbuku`.`penerbit`
    , `tblbuku`.`tahunTerbit`
    , `tblbuku`.`jmlHalaman`
    , `tblbuku`.`statusAktif` AS `statusAktifBuku`
    , `tblpeminjaman`.`idPeminjam`
    , `tblpeminjam`.`namaPeminjam`
    , `tblpeminjam`.`levelPeminjam`
    , `tblpeminjam`.`statusAktif` AS `statusAktifPeminjam`
    , `tblpeminjaman`.`idKaryawan`
    , `tblkaryawan`.`namaKaryawan`
    , `tblkaryawan`.`statusAktif` AS `statusAktifKaryawan`
    , `tblpeminjaman`.`statusAktif` AS `statusAktifPeminjaman`
FROM
    `dbperpustakaan`.`tblpeminjaman`
    INNER JOIN `dbperpustakaan`.`tblbuku` 
        ON (`tblpeminjaman`.`idBuku` = `tblbuku`.`idBuku`)
    INNER JOIN `dbperpustakaan`.`tblkaryawan` 
        ON (`tblpeminjaman`.`idKaryawan` = `tblkaryawan`.`idKaryawan`)
    INNER JOIN `dbperpustakaan`.`tblpeminjam` 
        ON (`tblpeminjaman`.`idPeminjam` = `tblpeminjam`.`idPeminjam`)
WHERE `tblbuku`.`statusAktif` = '1' AND `tblpeminjam`.`statusAktif` = '1' AND `tblkaryawan`.`statusAktif` = '1' AND `tblpeminjaman`.`statusAktif` = '1';

SELECT * FROM vwPeminjaman