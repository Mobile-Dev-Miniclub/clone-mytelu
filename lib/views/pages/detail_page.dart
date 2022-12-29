part of 'pages.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detailArguments';
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    Widget contentHeader() {
      return SizedBox(
        width: double.infinity,
        height: 150,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              args.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Nanda Febrian >> Tirto.id',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                const Text(
                  '30 Menit yang lalu',
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget contentImage() {
      return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
      );
    }

    Widget contentText() {
      return const Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontSize: 17,
        ),
      );
    }

    Widget contentTextTwo() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
        ),
        child: const Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      );
    }

    Widget contentTextThree() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
        ),
        child: const Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Berita Terkini',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Column(
              children: [
                contentHeader(),
                contentImage(),
                contentText(),
                contentTextTwo(),
                contentTextThree(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
