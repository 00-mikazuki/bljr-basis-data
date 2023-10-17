DELIMITER $$

ALTER ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwpeminjaman` AS (
SELECT
  `tblpeminjaman`.`idPeminjaman` AS `idPeminjaman`,
  `tblpeminjaman`.`idBuku`       AS `idBuku`,
  `tblbuku`.`judulBuku`          AS `judulBuku`,
  `tblbuku`.`pengarang`          AS `pengarang`,
  `tblbuku`.`penerbit`           AS `penerbit`,
  `tblbuku`.`tahunTerbit`        AS `tahunTerbit`,
  `tblbuku`.`jmlHalaman`         AS `jmlHalaman`,
  `tblbuku`.`statusAktif`        AS `statusAktifBuku`,
  `tblpeminjaman`.`idPeminjam`   AS `idPeminjam`,
  `tblpeminjam`.`namaPeminjam`   AS `namaPeminjam`,
  `tblpeminjam`.`levelPeminjam`  AS `levelPeminjam`,
  `tblpeminjam`.`statusAktif`    AS `statusAktifPeminjam`,
  `tblpeminjaman`.`idKaryawan`   AS `idKaryawan`,
  `tblkaryawan`.`namaKaryawan`   AS `namaKaryawan`,
  `tblkaryawan`.`statusAktif`    AS `statusAktifKaryawan`,
  `tblpeminjaman`.`jmlPeminjaman` AS `jmlPeminjaman`,
  `tblpeminjaman`.`statusAktif`  AS `statusAktifPeminjaman`
FROM (((`tblpeminjaman`
     JOIN `tblbuku`
       ON (`tblpeminjaman`.`idBuku` = `tblbuku`.`idBuku`))
    JOIN `tblkaryawan`
      ON (`tblpeminjaman`.`idKaryawan` = `tblkaryawan`.`idKaryawan`))
   JOIN `tblpeminjam`
     ON (`tblpeminjaman`.`idPeminjam` = `tblpeminjam`.`idPeminjam`))
WHERE `tblbuku`.`statusAktif` = '1'
    AND `tblpeminjam`.`statusAktif` = '1'
    AND `tblkaryawan`.`statusAktif` = '1'
    AND `tblpeminjaman`.`statusAktif` = '1')$$

DELIMITER ;