import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:justonepage/main.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 15.44.sp,
            )),
        title: Text(
          'Leave Requests',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0C0C0C),
            fontSize: 16.sp,
            //fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {  },
            icon:  Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 24.sp,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 10.w),
            child: Stack(
              children: [

                Icon(
                  Icons.notifications_none_sharp,
                  size: 24.sp,
                  color: Colors.black,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 15.w,top: 5.h),
                  child: Container(
                    width: 5.w,
                    height: 4.48.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFF6E91),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 2.w,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              indicatorPadding: EdgeInsets.only(left: 5.w, right: 5.w),
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 1,
              labelColor: Colors.black,
              dividerColor: Colors.grey,
              tabs: [
                Tab(
                  child: Text(
                    'PENDING REQUESTS',
                    style: TextStyle(
                      color: Color(0xFF0C0C0C),
                      fontSize: 16.sp,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Tab(
                    child: Text(
                  'HISTORY',
                  style: TextStyle(
                    color: Color(0xFF797373),
                    fontSize: 12.sp,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    // height: 0,
                  ),
                ))
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.24.w),
                    child: Column(
                      children: [
                        //Tabbar

                        SizedBox(
                          height: 19.38,
                        ),

                        Expanded(
                          child: ListView.separated(
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                elevation: 5,
                                child: Container(
                                  width: 343.28.w,
                                  height: 177.83.h,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height:2.h ,),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.2.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 36.w,
                                                      height: 36.h,
                                                      decoration:
                                                          ShapeDecoration(

                                                        image: DecorationImage(
                                                          image: AssetImage("assets/Ellipse 48.png"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                        shape: OvalBorder(),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 11.53.w,
                                                    ),
                                                    Text(
                                                      'Abhay Kumar',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14.sp,
                                                        // fontFamily: 'Open Sans',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  'Applied on\n19 nov 2022',
                                                  style: TextStyle(
                                                    color: Color(0xFF685F5F),
                                                    fontSize: 8.sp,
                                                    // fontFamily: 'Open Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.6.w),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 64.43.w,
                                                    height: 13.95.h,
                                                    decoration: ShapeDecoration(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width: 0.50.w,
                                                            color: index==0? Color(0xFF27AE60):Colors.blue),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.r),
                                                      ),
                                                    ),
                                                    child:index==0? Center(
                                                      child: Text(
                                                        'Sick Leave',
                                                        style: TextStyle(
                                                          color:
                                                             index==0? Color(0xFF27AE60):Colors.blue,
                                                          fontSize: 10.sp,
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          // height: 0.11,
                                                        ),
                                                      ),
                                                    ):Center(
                                                      child: Text(
                                                        'Unpaid Leave',
                                                        style: TextStyle(
                                                          color:
                                                          index==0? Color(0xFF27AE60):Colors.blue,
                                                          fontSize: 8.sp,
                                                          fontFamily:
                                                          'Open Sans',
                                                          fontWeight:
                                                          FontWeight.w400,
                                                          // height: 0.11,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 6.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Leave Date',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF585A5E),
                                                              fontSize: 12.sp,
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                          Text(
                                                            '\nDuration',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF585A5E),
                                                              fontSize: 12.sp,
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                          Text(
                                                            '\nLeave Balance',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF585A5E),
                                                              fontSize: 12.sp,
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                          Text(
                                                            '\nReason',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF585A5E),
                                                              fontSize: 12.sp,
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '19 Nov - 19 Nov 2022',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0C0C0C),
                                                              fontSize: 10.sp,
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 2.h,
                                                            ),
                                                          ),
                                                          Text(
                                                            '\n1 day(s)',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0C0C0C),
                                                              fontSize: 10.sp,
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                          Text(
                                                            '\n0 day(s)',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0C0C0C),
                                                              fontSize: 10.sp,
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 1.h,
                                                            ),
                                                          ),
                                                          Text(
                                                            'High fever',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0C0C0C),
                                                              fontSize: 10.sp,
                                                              fontFamily:
                                                                  'Open Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 4.h,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 144.57.w,
                                            height: 33.26.h,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD1EFE9),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10.r)),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'APPROVE',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF309482),
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 144.57.w,
                                            height: 33.26.h,
                                            decoration: ShapeDecoration(
                                              color: Color(0x33FD8989),
                                              shape: RoundedRectangleBorder(),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'REJECT',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFFF3535),
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 19.4.w,
                                          ),
                                          Center(
                                            child: Text(
                                              'EDIT',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF2F80ED),
                                                fontSize: 10.sp
                                                ,
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                height: 21.44.h,
                              );
                            },
                            itemCount: 4,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
