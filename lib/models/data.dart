class KelasModel {
  String room;
  String room_code;
  String pelajaran;
  String bagian;
  String anggota;
  String image;

  KelasModel(this.room,this.room_code,this.pelajaran,this.bagian,this.anggota,this.image);
}

List<KelasModel> kelas = daftarKelas.map((item) => KelasModel(
    item['room'],
    item['room_code'],
    item['pelajaran'],
    item['bagian'],
    item['anggota'],
    item['image'])
).toList();

var daftarKelas = [
  {
    "room" : "XI.AIJ.1",
    "room_code" : "abcdef",
    "pelajaran" : "Administrasi Infrastruktur Jaringan",
    "bagian" : "XI",
    "anggota" : "6",
    "image": "asset/images/img_backtoschool.jpg"
  },
  {
    "room" : "XI.AIJ.1",
    "room_code" : "abcdef",
    "pelajaran" : "Administrasi Infrastruktur Jaringan",
    "bagian" : "XI",
    "anggota" : "6",
    "image": "asset/images/img_bookclub.jpg"
  },
  {
    "room" : "XI.AIJ.1",
    "room_code" : "abcdef",
    "pelajaran" : "Administrasi Infrastruktur Jaringan",
    "bagian" : "XI",
    "anggota" : "6",
    "image": "asset/images/img_breakfast.jpg"
  },
  {
    "room" : "XI.AIJ.1",
    "room_code" : "abcdef",
    "pelajaran" : "Administrasi Infrastruktur Jaringan",
    "bagian" : "XI",
    "anggota" : "6",
    "image": "asset/images/img_code.jpg"
  },
  {
    "room" : "XI.AIJ.1",
    "room_code" : "abcdef",
    "pelajaran" : "Administrasi Infrastruktur Jaringan",
    "bagian" : "XI",
    "anggota" : "6",
    "image": "asset/images/img_graduation.jpg"
  },
  {
    "room" : "XI.AIJ.1",
    "room_code" : "abcdef",
    "pelajaran" : "Administrasi Infrastruktur Jaringan",
    "bagian" : "XI",
    "anggota" : "6",
    "image": "asset/images/img_honors.jpg"
  },
];
