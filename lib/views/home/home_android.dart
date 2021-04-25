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
    return Scaffold(
        body: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5)
              ),
              width: size.width,
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${viewModel.counter}",
                      style: Theme.of(context).textTheme.headline2),
                  ElevatedButton(
                      onPressed: () => viewModel.increment(),
                      child: Text("Aumentar")),
                  ElevatedButton(
                      onPressed: () => locator<NavigatorService>()
                          .navigateToPage(MaterialPageRoute(
                              builder: (context) => HomeView())),
                      child: Text("Go To Page")),
                  ElevatedButton(
                      onPressed: () => locator<MessengerService>()
                          .showSnackbar(SnackBar(content: Text("Showw"))),
                      child: Text("teste")),
                  viewModel.busy ? Text("Busy") : Text("Free")
                ],
              )),
        ));
  }
}
