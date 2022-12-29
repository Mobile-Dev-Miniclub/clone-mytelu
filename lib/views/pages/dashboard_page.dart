part of 'pages.dart';

class DashboardPage extends StatefulWidget {
  static const routeName = '/dashboardArguments';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Widget header() {
    return Container(
      padding: EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat pagi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Navizah",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                Text(
                  "Mahasiswa",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/profile.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardSchedule() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pemograman Aplikasi Perangkat \nBergerak",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            "🔴 Sedang Berlangsung",
            style: TextStyle(
              color: Colors.red,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Waktu",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "08.30-10.30",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ruangan",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "R03.02.09(G203)",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kode dosen",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "IZM",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget contentApp() {
    return Container(
      margin: EdgeInsets.only(top: 26),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20, top: 10),
            child: Text(
              "Apps",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(6, 0, 0, 0).withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/app.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        "Top 100\nMahasiswa",
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(6, 0, 0, 0).withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/scan.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        "Presensi\nMahasiswa",
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(6, 0, 0, 0).withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/paper.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        "Nilai\nMahasiswa",
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(6, 0, 0, 0).withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/lainnya.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        "Lainnya",
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20, top: 30),
                child: Text(
                  "Berita Terbaru",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, top: 30),
                child: Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                DetailPage.routeName,
                arguments: ScreenArguments(
                  'Larangan Mencegah & Wajib Berjilbab di Sekolah Memupus Intoleransi',
                  '6 jam yang lalu - Tirto.id',
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 190,
                        child: Text(
                          "Larangan Mencegah & Wajib Berjilbab di Sekolah Memupus Intoleransi",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        width: 190,
                        child: Text(
                          "6 jam yang lalu - Tirto.id",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/news.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 190,
                      child: Text(
                        "Larangan Mencegah & Wajib Berjilbab di Sekolah Memupus Intoleransi",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      width: 190,
                      child: Text(
                        "6 jam yang lalu - Tirto.id",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  width: 120,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/news.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 190,
                      child: Text(
                        "Larangan Mencegah & Wajib Berjilbab di Sekolah Memupus Intoleransi",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      width: 190,
                      child: Text(
                        "6 jam yang lalu - Tirto.id",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  width: 120,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/news.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Color.fromARGB(255, 181, 29, 19),
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Color.fromARGB(255, 181, 29, 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 24, horizontal: 18),
                    child: Text(
                      "Jadwal Kuliah Hari ini",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  cardSchedule(),
                  contentApp()
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
