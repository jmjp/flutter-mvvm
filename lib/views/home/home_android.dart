part of home_view;

class _HomeAndroid extends StatelessWidget {
  final HomeViewModel viewModel;
  _HomeAndroid(this.viewModel);
  final AppBar _appBar = AppBar(
    title: Text("Home"),
    elevation: 0,
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://skins.cash/blog/wp-content/uploads/2018/07/CS-GO-wallpapers-red-line-fam.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.5),
          body: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.5)),
                  width: size.width,
                  height: size.height,
                  padding: EdgeInsets.only(top: _appBar.preferredSize.height),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Jogadores",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.5),
                              ),
                              margin: EdgeInsets.only(left: 5),
                              padding:
                                  EdgeInsets.only(top: 5, bottom: 5, left: 5),
                              width: size.width,
                              height: size.height * 0.2,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 20,
                                  itemBuilder: (context, int) {
                                    return Container(
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.white,
                                                  Theme.of(context)
                                                      .accentColor
                                                      .withOpacity(0.3)
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                stops: [0.6, 1.5]),
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Theme.of(context)
                                                      .scaffoldBackgroundColor,
                                                  offset: Offset.zero,
                                                  blurRadius: 5.0,
                                                  spreadRadius: 1.5)
                                            ]),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              "https://s2.glbimg.com/VkFVbC426xlKoEMX1F2ecbSjt4c=/0x0:889x889/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2018/V/O/PVuxwBT3ybLKBwJKojFA/niko.jpg",
                                          placeholder: (context, url) => Expanded(

                                                                                      child: BlurHash(
                                                hash:
                                                    'LHAmoL%PE1IY-@xvV[xuN%xwnjxU'),
                                          ),
                                          errorWidget: (context, url, error) =>
                                              Icon(Icons.error),
                                        ));
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          )),
    );
  }
}
