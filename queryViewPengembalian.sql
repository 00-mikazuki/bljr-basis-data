SELECT * FROM vwPengembalian

SELECT
    `tblpengembalian`.`idPengembalian`
    , `tblpeminjaman`.`idPeminjaman`
    , `tblpeminjaman`.`idBuku`
    , `tblbuku`.`judulBuku`
    , `tblpeminjam`.`idPeminjam`
    , `tblpeminjam`.`namaPeminjam`
    , `tblpeminjam`.`levelPeminjam`
    , `tblpeminjaman`.`idKaryawan` AS idKaryawanPeminjaman
    , `tblKaryawanPeminjaman`.`namaKaryawan` AS namaKaryawanPeminjaman
    , `tblpengembalian`.`idKaryawan` AS idKaryawanPengembalian
    , `tblkaryawan`.`namaKaryawan` AS namaKaryawanPengembalian
    , `tblpengembalian`.`jmlPengembalian`
FROM
    `dbperpustakaan`.`tblpengembalian`
    INNER JOIN `dbperpustakaan`.`tblpeminjaman` 
        ON (`tblpengembalian`.`idPeminjaman` = `tblpeminjaman`.`idPeminjaman`)
    INNER JOIN `dbperpustakaan`.`tblbuku` 
        ON (`tblpeminjaman`.`idBuku` = `tblbuku`.`idBuku`)
    INNER JOIN `dbperpustakaan`.`tblpeminjam` 
        ON (`tblpeminjaman`.`idPeminjam` = `tblpeminjam`.`idPeminjam`)
    INNER JOIN `dbperpustakaan`.`tblkaryawan` AS tblKaryawanPeminjaman
        ON (`tblpeminjaman`.`idKaryawan` = `tblKaryawanPeminjaman`.`idKaryawan`)
    INNER JOIN `dbperpustakaan`.`tblkaryawan` 
        ON (`tblpengembalian`.`idKaryawan` = `tblkaryawan`.`idKaryawan`);