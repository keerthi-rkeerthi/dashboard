import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});
  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.card_giftcard, 1),
          buildNavBarItem(Icons.camera, 2),
          buildNavBarItem(Icons.pie_chart, 3),
          buildNavBarItem(Icons.person, 4),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            color: const Color(0XFF00B686),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Text(
                      "Transfer",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildExpenseBotton(Icons.phone, "Mobile", true),
                    buildExpenseBotton(Icons.photo_camera, "Qr Code", false),
                    buildExpenseBotton(Icons.card_membership, "Card", false),
                    buildExpenseBotton(Icons.ev_station, "Utilities", false),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 170,
            height: MediaQuery.of(context).size.height - 230,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Recent",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildRecentContact("User 1",
                                "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAH0AnAMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABgcBBAUDAv/EADkQAAEDBAADAwgHCQAAAAAAAAABAgMEBQYRByExEkFRExYyYXGBkaEiI1JWsbLTFBUkM0Jjs8Hw/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/ALxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAfL3sY1XPcjWpzVVXSIcGrzfFqOVYqm/25kidW+Xaqp8AJADQtt5td1Z27ZcKaqb/ZlR34G9tAMgAAAAAAAAAAAAAAAAAAcfK8iocXss90uLlSKNNNY30pHdzU9anYXoU/l8XnrxcoMaldu22mJKmqj3ye7TVVF9ysT3qBq0Fhyfipq5ZJWy2uwPXtU1FT8llb3Lz/M7e+5CY0XCXC6WFI1tHll73zSuc5fmTeNrWMaxiIjWoiIidEQ+gKuvXBq0Od+14xWVVnr2c43Ryq5m/wAye5fcMHza7UN+80c6YkdzTX7NVprs1Cd2171XnpU1vovMtErzjXjjLtiktzgTsV9p/iYpW+kjE9Ju/Dv9rQLCRdmSP4Fe1yLErbdX68rNFqXX22qrXfNFJAAAAAAAAAAAAAAAAAAXoVNiD2w8csshm/nSU7XM31Vuo1/BULYXoVJxQgqsVy+1Z3QxLJTtVKa4Nb9nonxRdb8UQC3EBp2m50l3oIK63zNmpp2I5j2r/wBz9RuADj5hLFBil5lnX6ttFMrt+HYU66lV8Y8hkrWQYVYV8tdLlI1s7Wc/Jx9dL4b5KvgiKB1eBLHs4b0KvRdOlmVu/Dtqn+lLAOZjVpisViobVBpWUsLY9/aXvX3qqqdMAAAAAAAAAAAAAAAAAa1wo6e4Uc1HWQsmp5mKySN6bRyL3HPyfJ7Vi1AtZeKpsLF5RsTm+RfBqd5XrOJuWX5FlxDDZJqX+merVdO+ConzUDxlw7L8ArZavBKj94WqR3afbKh3Nns2qb9qaXpvZsM4u3Ol+pu2E3SKoTkqR9rSr6ttMedPFr7m0HxX9UedPFr7m0HxX9UDynzDiFlbVpsaxp9oievZWsrF0rE8UVyJ8kUlHD/h9TYqslfWVDrjeqjflqyTaqm+5u9r7V6r8iOedPFr7m0HxX9UymXcVYvpz4VSPYnVI1Xf+RfwAtnWgVxjfFq3V9xS1ZBRT2S5KqNRlT6CuXu2ulT3pr1ljIu0RQMgAAAAAAAAAAAAB4VtRFSUk1TUO7MMLHSPd4NRNqe5HuINFW3HC7vRWyJZauenVkcaKiK7fVOfq2BXGD2eTiTkFTmOSRrJb4pVit9G/mzSeKdFRPmu/AuZjEY1GtREaiaRE6IhHuHlolseF2m3VMPkaiGHcrN709VVV+akjAAAAFAAjebYfbcutb6Wviak6NXyFS1PpxO7l34eKEX4PX2v7VwxK/OV1xszuwx7l2r4t69+uXPwVCzNFdsxy50/Gh1+gpVS2z0HYmnRyaV+kTSp139FoFiAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP//Z"),
                            buildRecentContact("User 2",
                                "data:image/png;base64,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"),
                            buildRecentContact("User 3",
                                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHkAAAB5CAMAAAAqJH57AAAAP1BMVEX///+ZmZmWlpakpKSTk5Pq6urFxcWqqqrj4+P39/eQkJDKysqgoKD8/PzQ0ND09PS3t7fW1tbc3NywsLC+vr4gR+LZAAADrElEQVRoge1a24KqMAykNwoFRMT//9YDyq4gnZhwWR9O58UXwzRpmlubZQkJCQkJCQkJO9GUrXuiLf+OtS2qqzfKPqGMv+ZFezpr43Kvg9VqBq1t0D53Z/K2eR30gnVGH+p80Lw5g7fwIc76yx764gxeY2neB7c1t4N5Xc/gfVq9P3LDmxzsbpw7P2yznbFs3hHWHKR2xzT0nLs7gvgepLwDwn03b+Nllv7V2u/c7NKILT1B17si6nbikXpHLml2EI/U2w3u9xAP1H4r8Z1wLj0ctdrUwy9BbTd6eIePkw6+c6MtG9d54riHTefaYW2snwcpRxw8uyGaEd61ilAdpNZG7mU5/lqxyv8F/LPNpcQOaxzL/phaS+3dI2ZbRf9fIWrdy4ixDgZIQLeI2ggDfkejaucGJdBa4yrDo1wDiSarkUiQKA3DpsaumkMZQRBtocrEpmHXCPx8CZevFD4jLZThn+kGbpki0n1LSHGZHU4VRLYvMXPgRhPC2Nt0JvxygYYqCPDqHRbiendLEFvcNt2IGsHyvBuHkWH1Vyh2JRbMDCYw+D+AXKykhECakSxeafSNipTCppqDrjh1XOmSLlNZHQdxLh/M8XwL8/kThlP14yj4RDQW5p/aPo5z4zpoQqRP/Nhvsmoiotr90dovNWj7zyLHMCut8hd3m6vPTdBRzMOXVH8pXOvcpVes/x/GPDZWwWprmZOMw6yt7RyMwdEhzDpYc68uL1R3bz9MB3m+TZ/nUEdHq66qaXLOeS4NlrceZ8nCE4eaN7mAcdsquh3u8PHiTYpQrrL9J5PBkMLMVaB/ZY0ewICDWYjFaxJm0RxfNrMmidZh7GFLVGvLHI1FXEzQBUcyNbuzitXb/NYoEg+49XakxxBNjdfTLHaPsW6FRYPbdafA7qtW5g6ya5Hbm9JsY6/7Z+no9M1mgv75zbsFa35iaTPR4HXZ//MdZMLSRWXDocVsKAiJs2zOLJsNLZQWio6YJ1rhPGweiZiJZo5ZupPOAOf1vtjBli4mnjO/kg5sHzFejaV81ps15gjmLfPtVw26h3nLTP8V+fVFLHqZmLfeT/4k+dpIMYXPrXc3X7yvypp61x3dFu/6QbmDete95DhS3HwXyxqNEPja/XP2vTv3jLqBwxof8s7gi28rvvieJPveG5oRrHdDg6FPebPkA73fOvgzeEcw3oedh+lN3LKgtsGe/CbugWZ6BzjNxFTtr1Xxd88Q528fT3mAl5CQkJCQkPB/4R8kjCU7aDs6rQAAAABJRU5ErkJggg=="),
                            buildRecentContact("User 4",
                                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAH0AAAB9CAMAAAC4XpwXAAAAYFBMVEX///8AAAD5+fnAwMAzMzMeHh58fHzl5eW8vLxJSUnd3d21tbVkZGTa2trFxcVGRkZvb287OzvPz8+NjY2YmJgLCwvs7OwRERElJSVRUVGmpqZdXV2fn5+GhoZpaWmtra3YuSCyAAAEn0lEQVRoge1b24KqMAykBUFAARVZXF39/788FBblUpoJlLMvzDN2ekmnk7Q6Dh8ycuPcP4Te7iquOy88+HnsRnJGS1zi4973dkKHnefvjyt2oUj8VEv8QeonxRrU0s2+COoGX5lrewaiC8Tc4hJZ5HZDFrdC6Fri3p/Y3AqnvQXuMxVo00jPC7mDw2xuhUOwhPxnEbfCz2zuc7mYXIhy3vRL3iabxmXG9g9ulsiFuLFX/2yNW4E5+99WyYX45pD7lsmF8HHyu3VyIe4oOV/VEYQYub1g7+P2dyNXAEa/xpq3INcejfZr+HwkxyAIjsnjGV7BXxGRD+7z9NWzsDJ6geewcd9jCpfppOucQb81qF4AcU+pdgDxT2q+BPZamRimLgGO5NvUiQccqXezWy+AHXPR/xRYdFqtgT2jX3p62nKS3HFyspVS9zPaw03M2QD0+mm8Hh3vB4jccWgbPI578jcn1J5JMvsYjYMOOdwd8dsilRJb9Abk0qf97/fU9yXHFkty+/RzPHKpWLaQPqxO3a9d6mvBInccsr1ugk36Gc6qK5Ar3/E5EdnVI5P9SLb4qW6QPd0xyR1HX9fq4D2bkuwoPw+mdbvdRHTM8Ysg5BZ+xx3tSfg5OK13WfNhQdbhSn4FsCAF56tpNCG7eSKodKALXY1Ho+1ISjDpQFvs2ihJ+rt12FMV9bQwrMReSxi9N9ZiV/sYcKGwrfmANjjNwnv0ZyW/5BgAiYVXdZJUZLGO2lSnhwTOtwoxmz1Gmo0Aka/wZLM/kWZdrJNcawOYG4UYyHwUTJmrDrR6K+RgqYRR7KuBtgqW/3k7nvYrNQ5ogYznbsBbhRARmxocwYEqMELJDSI2ChmDHSsgKbOKltoYioNt4gpXbGPWQOcenfcK+NjRRJJOId+4wute4Y7QS0ahdwfHvMKTppeQwP/C4xXEb5S1LljF/RDVuhbmk555k3VgXwD9TM++5F6c+uAZ14EX6/llzAmhGjkuDR+kjzG/fMy4KY8xbzNCFnfjr4hRbe3DxXydDmGeBNKRQZLPvkeKME/bx82PI9m7GZFR7PMv0ipPy5KbSm6fcTARdUH85F3YV36eteXSPXE7sOfEnrJrQB7Xfo1Uro74aFQeB+SwNQwyM1gCVHTUYID8XRhuonTAbqfq/B1ZeI/t54FYblw67fz9GRk0PaZmRGTNat6TKUpEf2tWhAU9zX0wV5gLCK1JNvYSvQvSwegd2hk15T3zXyopmPbeO5ama9TcuvwQSMuT59xScgN95/XhxBnJzZt1mNh53TcY+riDn8gYoff3vV2s2xypnaehWiXv1511B52td6G6qBpcN4w7aONRZoPx0Ial11EeYCPiWowib5STDHXJ5nvgoZyN9XOQdb8skjvOq9+4xiv0VHFOTdyEXlhp1btrSLl3jxS69k377qIbeJwSEYbOKT6RBl9WG3p38FNnx/utEb8kTaOtaUy+NXrHPddDImjdo8Ebnw1hsRSladEb1E8WHquwP1TTxAMK3zw5C6CWlZTv+0oTr6YeMAyn5XZKjwtymSxt/t+ji//xb6INGzZs2LBhw4Y/xD+VuDalCY/JPAAAAABJRU5ErkJggg=="),
                            buildRecentContact("User 5",
                                "data:image/png;base64,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"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: ListView(
                      children: [
                        const Text(
                          "Contact",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,
                                  size: 30, color: Colors.grey),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        buildContactRow(
                          "User 2",
                          "578921456",
                          "data:image/png;base64,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",
                        ),
                        buildContactRow("User 3", "152354216",
                            "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHkAAAB5CAMAAAAqJH57AAAAP1BMVEX///+ZmZmWlpakpKSTk5Pq6urFxcWqqqrj4+P39/eQkJDKysqgoKD8/PzQ0ND09PS3t7fW1tbc3NywsLC+vr4gR+LZAAADrElEQVRoge1a24KqMAykNwoFRMT//9YDyq4gnZhwWR9O58UXwzRpmlubZQkJCQkJCQkJO9GUrXuiLf+OtS2qqzfKPqGMv+ZFezpr43Kvg9VqBq1t0D53Z/K2eR30gnVGH+p80Lw5g7fwIc76yx764gxeY2neB7c1t4N5Xc/gfVq9P3LDmxzsbpw7P2yznbFs3hHWHKR2xzT0nLs7gvgepLwDwn03b+Nllv7V2u/c7NKILT1B17si6nbikXpHLml2EI/U2w3u9xAP1H4r8Z1wLj0ctdrUwy9BbTd6eIePkw6+c6MtG9d54riHTefaYW2snwcpRxw8uyGaEd61ilAdpNZG7mU5/lqxyv8F/LPNpcQOaxzL/phaS+3dI2ZbRf9fIWrdy4ixDgZIQLeI2ggDfkejaucGJdBa4yrDo1wDiSarkUiQKA3DpsaumkMZQRBtocrEpmHXCPx8CZevFD4jLZThn+kGbpki0n1LSHGZHU4VRLYvMXPgRhPC2Nt0JvxygYYqCPDqHRbiendLEFvcNt2IGsHyvBuHkWH1Vyh2JRbMDCYw+D+AXKykhECakSxeafSNipTCppqDrjh1XOmSLlNZHQdxLh/M8XwL8/kThlP14yj4RDQW5p/aPo5z4zpoQqRP/Nhvsmoiotr90dovNWj7zyLHMCut8hd3m6vPTdBRzMOXVH8pXOvcpVes/x/GPDZWwWprmZOMw6yt7RyMwdEhzDpYc68uL1R3bz9MB3m+TZ/nUEdHq66qaXLOeS4NlrceZ8nCE4eaN7mAcdsquh3u8PHiTYpQrrL9J5PBkMLMVaB/ZY0ewICDWYjFaxJm0RxfNrMmidZh7GFLVGvLHI1FXEzQBUcyNbuzitXb/NYoEg+49XakxxBNjdfTLHaPsW6FRYPbdafA7qtW5g6ya5Hbm9JsY6/7Z+no9M1mgv75zbsFa35iaTPR4HXZ//MdZMLSRWXDocVsKAiJs2zOLJsNLZQWio6YJ1rhPGweiZiJZo5ZupPOAOf1vtjBli4mnjO/kg5sHzFejaV81ps15gjmLfPtVw26h3nLTP8V+fVFLHqZmLfeT/4k+dpIMYXPrXc3X7yvypp61x3dFu/6QbmDete95DhS3HwXyxqNEPja/XP2vTv3jLqBwxof8s7gi28rvvieJPveG5oRrHdDg6FPebPkA73fOvgzeEcw3oedh+lN3LKgtsGe/CbugWZ6BzjNxFTtr1Xxd88Q528fT3mAl5CQkJCQkPB/4R8kjCU7aDs6rQAAAABJRU5ErkJggg=="),
                        buildContactRow("User 1", "236254122",
                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAH0AnAMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABgcBBAUDAv/EADkQAAEDBAADAwgHCQAAAAAAAAABAgMEBQYRByExEkFRExYyYXGBkaEiI1JWsbLTFBUkM0Jjs8Hw/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/ALxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAfL3sY1XPcjWpzVVXSIcGrzfFqOVYqm/25kidW+Xaqp8AJADQtt5td1Z27ZcKaqb/ZlR34G9tAMgAAAAAAAAAAAAAAAAAAcfK8iocXss90uLlSKNNNY30pHdzU9anYXoU/l8XnrxcoMaldu22mJKmqj3ye7TVVF9ysT3qBq0Fhyfipq5ZJWy2uwPXtU1FT8llb3Lz/M7e+5CY0XCXC6WFI1tHll73zSuc5fmTeNrWMaxiIjWoiIidEQ+gKuvXBq0Od+14xWVVnr2c43Ryq5m/wAye5fcMHza7UN+80c6YkdzTX7NVprs1Cd2171XnpU1vovMtErzjXjjLtiktzgTsV9p/iYpW+kjE9Ju/Dv9rQLCRdmSP4Fe1yLErbdX68rNFqXX22qrXfNFJAAAAAAAAAAAAAAAAAAXoVNiD2w8csshm/nSU7XM31Vuo1/BULYXoVJxQgqsVy+1Z3QxLJTtVKa4Nb9nonxRdb8UQC3EBp2m50l3oIK63zNmpp2I5j2r/wBz9RuADj5hLFBil5lnX6ttFMrt+HYU66lV8Y8hkrWQYVYV8tdLlI1s7Wc/Jx9dL4b5KvgiKB1eBLHs4b0KvRdOlmVu/Dtqn+lLAOZjVpisViobVBpWUsLY9/aXvX3qqqdMAAAAAAAAAAAAAAAAAa1wo6e4Uc1HWQsmp5mKySN6bRyL3HPyfJ7Vi1AtZeKpsLF5RsTm+RfBqd5XrOJuWX5FlxDDZJqX+merVdO+ConzUDxlw7L8ArZavBKj94WqR3afbKh3Nns2qb9qaXpvZsM4u3Ol+pu2E3SKoTkqR9rSr6ttMedPFr7m0HxX9UedPFr7m0HxX9UDynzDiFlbVpsaxp9oievZWsrF0rE8UVyJ8kUlHD/h9TYqslfWVDrjeqjflqyTaqm+5u9r7V6r8iOedPFr7m0HxX9UymXcVYvpz4VSPYnVI1Xf+RfwAtnWgVxjfFq3V9xS1ZBRT2S5KqNRlT6CuXu2ulT3pr1ljIu0RQMgAAAAAAAAAAAAB4VtRFSUk1TUO7MMLHSPd4NRNqe5HuINFW3HC7vRWyJZauenVkcaKiK7fVOfq2BXGD2eTiTkFTmOSRrJb4pVit9G/mzSeKdFRPmu/AuZjEY1GtREaiaRE6IhHuHlolseF2m3VMPkaiGHcrN709VVV+akjAAAAFAAjebYfbcutb6Wviak6NXyFS1PpxO7l34eKEX4PX2v7VwxK/OV1xszuwx7l2r4t69+uXPwVCzNFdsxy50/Gh1+gpVS2z0HYmnRyaV+kTSp139FoFiAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP//Z"),
                        buildContactRow("User 5", "236254122",
                            "data:image/png;base64,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"),
                        buildContactRow(
                          "User 2",
                          "578921456",
                          "data:image/png;base64,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",
                        ),
                        buildContactRow(
                          "User 2",
                          "578921456",
                          "data:image/png;base64,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",
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildContactRow(String name, String phone, String url) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(url),
                radius: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.grey,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        phone,
                        style: (const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.greenAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }

  Container buildRecentContact(String name, String url) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.green),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Container buildExpenseBotton(IconData icon, String title, bool isActive) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? const Color(0XFF00B686) : Colors.white,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isActive ? const Color(0XFF00B686) : Colors.white,
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 60,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: const Border(
                    bottom: BorderSide(width: 4, color: Colors.green)),
                gradient: LinearGradient(colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.green.withOpacity(0.016),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : const BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex
              ? const Color(0XFF00B868)
              : Colors.grey,
        ),
      ),
    );
  }
}
