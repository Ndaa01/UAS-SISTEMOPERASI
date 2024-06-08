#!/bin/bash

# Ananda-TI1B-05.sh

# Ananda Satria Putra Nugraha 05/2341720132 TI-1B
# UAS-Praktikum Sistem Operasi
clear

echo "======================================================"
echo "              Welcome To KeyArchiver                  "
echo "======================================================"
echo "=================== Created By  ======================"
echo "             Ananda Satria Putra Nugraha              "
echo "                    2341720132                        "
echo "=================== Kelas TI-1B ======================"

function menu() {
    echo "======================================"
    echo "                Menu                  "
    echo "======================================"
    echo "1. Membuat Direktori"
    echo "2. Lihat Direktori dan File"
    echo "3. Buat File"
    echo "4. Hapus File"
    echo "5. Hapus Folder"
    echo "6. Baca File"
    echo "7. Cari File Berdasarkan Nama"
    echo "8. Ubah Izin File"
    echo "9. Keluar"
    echo -n "Masukkan pilihan anda: "
}

function makeDir() {
    echo -n "Masukkan nama direktori: "
    read nama_direktori
    mkdir -p "$nama_direktori"
    echo "Direktori '$nama_direktori' telah dibuat."
}

function lihatDir() {
    echo -n "Masukkan path direktori: "
    read path_direktori
    ls -l "$path_direktori"
}

function makeFile() {
    echo -n "Masukkan nama file: "
    read nama_file
    touch "$nama_file"
    echo "File '$nama_file' telah dibuat."
}

function deleteFile() {
    echo -n "Masukkan nama file: "
    read nama_file
    rm -f "$nama_file"
    echo "File '$nama_file' telah dihapus."
}

function deleteFolder() {
    echo -n "Masukkan nama folder: "
    read nama_folder
    rm -rf "$nama_folder"
    echo "Folder '$nama_folder' telah dihapus."
}

function readFile() {
    echo -n "Masukkan nama file: "
    read nama_file
    cat "$nama_file"
}

function findFile() {
    echo -n "Masukkan nama file: "
    read nama_file
    find . -name "$nama_file"
}

function changePermission() {
    echo -n "Masukkan nama file: "
    read nama_file
    echo -n "Masukkan izin baru: "
    read izin_baru
    chmod "$izin_baru" "$nama_file"
    echo "Izin file '$nama_file' telah diubah menjadi $izin_baru."
}

# Loop utama
while true; do
    menu
    read pilihan
    
    case $pilihan in
        1) makeDir ;;
        2) lihatDir ;;
        3) makeFile ;;
        4) deleteFile ;;
        5) deleteFolder ;;
        6) readFile ;;
        7) findFile ;;
        8) changePermission ;;
        9) exit 0 ;;
        *) echo "Pilihan tidak valid. Silakan coba lagi." ;;
    esac
    
    echo
done
