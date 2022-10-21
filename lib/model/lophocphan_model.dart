class LopHocPhanModel {
  String? hinhNen;
  String? maLopHoc;
  String? tenLopHocPhan;
  int? soLuongNhanVien;

  LopHocPhanModel(
      {this.hinhNen, this.maLopHoc, this.tenLopHocPhan, this.soLuongNhanVien});
}

List<LopHocPhanModel> ls = [
  LopHocPhanModel(
    hinhNen: "assets/images/bg1.jpg",
    maLopHoc: "TIN-102",
    tenLopHocPhan: "Cấu trúc giải thuật",
    soLuongNhanVien: 35,
  ),
  LopHocPhanModel(
    hinhNen: "assets/images/bg2.jpg",
    maLopHoc: "TIN-102",
    tenLopHocPhan: "Nhập môn cơ sở dũ liệu",
    soLuongNhanVien: 35,
  ),
  LopHocPhanModel(
    hinhNen: "assets/images/bg3.jpg",
    maLopHoc: "TIN-102",
    tenLopHocPhan: "Nhập môn trí tuệ nhân tạo",
    soLuongNhanVien: 35,
  ),
  LopHocPhanModel(
    hinhNen: "assets/images/bg4.jpg",
    maLopHoc: "TIN-102",
    tenLopHocPhan: "Flutter",
    soLuongNhanVien: 35,
  ),
  LopHocPhanModel(
    hinhNen: "assets/images/bg5.jpg",
    maLopHoc: "TIN-102",
    tenLopHocPhan: "C#",
    soLuongNhanVien: 35,
  ),
];
