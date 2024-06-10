



class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();
  List<ClaimsDashboardItems> _searchResult = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_search);
  }

  @override
  void dispose() {
    _searchController.removeListener(_search);
    _searchController.dispose();
    super.dispose();
  }

  void _search() {
    String query = _searchController.text;
    _searchResult.clear();
    if (query.isEmpty) {
      setState(() {});
      return;
    }
    final String lowerCaseQuery = query.toLowerCase();
    _searchResult = dummyData.where((item) {
      return item.requestNumber.toLowerCase().contains(lowerCaseQuery) ||
          item.customerName.toLowerCase().contains(lowerCaseQuery) ||
          item.carName.toLowerCase().contains(lowerCaseQuery);
    }).toList();
    setState(() {});
  }

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                onChanged: (_) => _search(),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
                style: const TextStyle(color: Colors.black),
              )
            : Text('Dashboard'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 2),
        centerTitle: false,
        backgroundColor: Color(0xFF610361),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () => _toggleSearch(),
            icon: Icon(Icons.search_outlined),
          ),
          IconButton(
            onPressed: () {
              print("Notification button clicked");
            },
            icon: Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _isSearching ? _searchResult.length : dummyData.length,
          itemBuilder: (context, index) {
            // Your list item code here, use _isSearching ? _searchResult[index] : dummyData[index]

            temBuilder: (context, index) {
            //******************************************************************************* */
            // return DashboardItemWidget(
            //     item: dummyData[index], searchIsOn: searchIsOn);
            return GestureDetector(
                onTap: () {
                  // Navigate to Sameer.dart page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClaimProcessing(
                        // selectedItem: widget.item
                        selectedItem: dummyData[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 165, 11, 152))),
                    elevation: 10,
                    color: Colors.blueGrey.shade50,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // SizedBox(
                        //     height: 150,
                        //     width: 100,
                        //     child: Image.asset(
                        //       'lib/assests/civic.jpg',
                        //       // fit: BoxFit.fitHeight,
                        //     )),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        Image.asset(
                          ('lib/assests/civic.jpg'),
                          // scale: Checkbox.width,
                          width: 150,
                          // height: 190,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              // "${widget.item.requestNumber}"
                              '${dummyData[index].requestNumber}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                // '${widget.item.customerName}'
                                '${dummyData[index].customerName}'),
                            Text(
                                // '${widget.item.carNumber}'
                                '${dummyData[index].carNumber}'),
                            Text(
                                // '${widget.item.carName}'
                                '${dummyData[index].carName}'),
                            const Text(
                              'Maruti Suzuki Authorised Service Center',
                              style: TextStyle(fontSize: 10),
                              // softWrap: false,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // const Expanded(
                            //   child: Row(
                            //     children: [
                            //       Flexible(
                            //         child: Text(
                            //           'Maruti Suzuki Authorised Service Center',
                            //           softWrap: false,
                            //           maxLines: 4,
                            //           overflow: TextOverflow.ellipsis,
                            //           style: TextStyle(
                            //               fontSize: 14,
                            //               letterSpacing: 2,
                            //               fontWeight: FontWeight.bold,
                            //               color: Color.fromRGBO(0, 0, 0, 1)),
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            Text(
                              // '${widget.item.status}',
                              '${dummyData[index].status}',
                              style: TextStyle(color: Colors.red.shade300),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Icon(Icons.phone),
                                // IconButton(
                                //     onPressed: _handlePhoneButton,
                                //     icon: Icon(
                                //       Icons.phone,
                                //       color: Colors.blue.shade300,
                                //     )
                                //     // icon: SvgPicture.asset(
                                //     //   'lib/assests/phone.svg',
                                //     //   width: 20,
                                //     //   height: 10,
                                //     // )
                                //     ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(6),
                                      backgroundColor: Colors.white,
                                      elevation: 7,
                                      // elevation is 10 by default
                                      shadowColor:
                                          Color.fromARGB(255, 107, 9, 116),
                                    ),
                                    onPressed: _handlePhoneButton,
                                    child: ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromRGBO(112, 12, 121, 1),
                                            Color.fromARGB(255, 32, 35, 202)
                                          ],
                                        ).createShader(bounds);
                                      },
                                      child: const Icon(
                                        Icons.phone,
                                        size: 20,
                                      ),
                                    )),
                                // SizedBox(width: 6),
                                // width is 10 if we use iconbutton
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(6),
                                      backgroundColor: Colors.white,
                                      elevation: 7,
                                      shadowColor:
                                          Color.fromARGB(255, 107, 9, 116),
                                    ),
                                    onPressed: _handleMailButton,
                                    child: ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromRGBO(112, 12, 121, 1),
                                            Color.fromARGB(255, 32, 35, 202)
                                          ],
                                        ).createShader(bounds);
                                      },
                                      child: const Icon(
                                        Icons.mail_lock_outlined,
                                        size: 20,
                                      ),
                                    )),

                                // IconButton(
                                //     onPressed: _handleMailButton,
                                //     icon: Icon(
                                //       Icons.mail_outline,
                                //       color: Colors.indigo.shade900,
                                //     )),
                                // Icon(Icons.mail_outline),
                                // SizedBox(width: 6),
                                //width is 10 by defaul
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(6),
                                      backgroundColor: Colors.white,
                                      elevation: 7,
                                      shadowColor:
                                          Color.fromARGB(255, 107, 9, 116),
                                    ),
                                    onPressed: _handleTextMessage,
                                    child: ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromRGBO(112, 12, 121, 1),
                                            Color.fromARGB(255, 32, 35, 202)
                                          ],
                                        ).createShader(bounds);
                                      },
                                      child: const Icon(
                                        Icons.message_outlined,
                                        size: 20,
                                      ),
                                    )),
                                // IconButton(
                                //     onPressed: _handleTextMessage,
                                //     icon: Icon(Icons.message_outlined)),
                                // Icon(Icons.message_outlined),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                ));
          },
          },
        ),
      ),
    );
  }
}
