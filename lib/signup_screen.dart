import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/app_icons.dart';
import 'package:flutter_application_1/app_style.dart';
import 'package:flutter_application_1/responsive_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backColor,


      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ResponsiveWidget.isSmallScreen(context) ? const SizedBox() : Expanded(

              child: Container(
                height: height,
                color: AppColors.mainBlueColor,
                child: Center(
                  child: Text('Sign Up' , 
                  style: ralewayStyle.copyWith(
                    fontSize: 48.0,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w800,
                  ),),
                ),
              ),
            ),
           
             Expanded(
              child: Container(
                height: height,
                margin: EdgeInsets.symmetric(horizontal:ResponsiveWidget.isSmallScreen(context) ? height * 0.032 :  height * 0.12),
                color: AppColors.backColor,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 48.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.15,),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Let's ", 
                          style: ralewayStyle.copyWith(
                            fontSize: 25.0,
                            color: AppColors.pinkDarkColor,
                            fontWeight: FontWeight.w400,

                          ),

                        ),
                        TextSpan(
                          text: "Sign up", 
                          style: ralewayStyle.copyWith(
                            fontSize: 25.0,
                            color: AppColors.pinkDarkColor,
                            fontWeight: FontWeight.w800,

                          ),
                          
                        )
                      ]
                    )
                    ),
                    SizedBox(height: height * 0.02,),
                    Text('Hey , Enter your details !' ,
                    style: ralewayStyle.copyWith(
                      fontSize:17.5,
                      fontWeight: FontWeight.w400,
                      color: AppColors.TextColor, 
                    ),),
                     SizedBox(height: height * 0.064,),
                    const Padding(padding: EdgeInsets.only(left: 16.0)),
                    Text('Name' ,
                    style: ralewayStyle.copyWith(
                      fontSize:17.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.pinkDarkColor, 
                    ),),
                    
                    const SizedBox(height: 10.0,),
                    Container(
                      height: 50.0 ,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(16.0),
                        color:AppColors.whiteColor,
                          ),
                      child: TextFormField(

                        style: ralewayStyle.copyWith(
                      fontSize:17.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.pinkDarkColor),

                        decoration: InputDecoration(
                          border: InputBorder.none,

                         
                            contentPadding: const EdgeInsets.only(top: 14.0),
                            hintText: 'Enter Name',
                            hintStyle:ralewayStyle.copyWith(
                              fontSize:15.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.pinkDarkColor.withOpacity(0.5),  
                           ),
                      ),
                    )),
                    SizedBox(height: height * 0.014,),
                    const Padding(padding: EdgeInsets.only(left: 16.0)),
                    Text('Email' ,
                    style: ralewayStyle.copyWith(
                      fontSize:17.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.pinkDarkColor, 
                    ),),
                    
                    const SizedBox(height: 10.0,),
                    Container(
                      height: 50.0 ,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(16.0),
                        color:AppColors.whiteColor,
                          ),
                      child: TextFormField(

                        style: ralewayStyle.copyWith(
                      fontSize:17.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.pinkDarkColor),

                        decoration: InputDecoration(
                          border: InputBorder.none,

                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset(AppIcons.emailIcon),),
                            contentPadding: const EdgeInsets.only(top: 14.0),
                            hintText: 'Enter Email',
                            hintStyle:ralewayStyle.copyWith(
                              fontSize:15.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.pinkDarkColor.withOpacity(0.5),  
                           ),
                      ),
                    )),
                     SizedBox(height: height * 0.014,),
                    const Padding(padding: EdgeInsets.only(left: 16.0)),
                    Text('Password' ,
                    style: ralewayStyle.copyWith(
                      fontSize:17.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.pinkDarkColor, 
                    ),),
                    
                    const SizedBox(height: 10.0,),
                    Container(
                      height: 50.0 ,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(16.0),
                        color:AppColors.whiteColor,
                          ),
                      child: TextFormField(

                        style: ralewayStyle.copyWith(
                      fontSize:15.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.pinkDarkColor),
                        
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset(AppIcons.eyeIcon),),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset(AppIcons.lockIcon),),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Enter Password',
                            hintStyle:ralewayStyle.copyWith(
                              fontSize:15.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.pinkDarkColor.withOpacity(0.5),  
                           ),
                      ),
                    )),
                    SizedBox(height: height * 0.03,),
                     Text('Confirm Password' ,
                    style: ralewayStyle.copyWith(
                      fontSize:17.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.pinkDarkColor, 
                    ),),
                    
                    const SizedBox(height: 10.0,),
                    Container(
                      height: 50.0 ,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(16.0),
                        color:AppColors.whiteColor,
                          ),
                      child: TextFormField(

                        style: ralewayStyle.copyWith(
                      fontSize:15.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.pinkDarkColor),
                        
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset(AppIcons.eyeIcon),),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset(AppIcons.lockIcon),),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Re-Enter Password',
                            hintStyle:ralewayStyle.copyWith(
                              fontSize:15.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.pinkDarkColor.withOpacity(0.5),  
                           ),
                      ),
                    )),
                    SizedBox(height: height * 0.03,),
                   /* Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: (){}, 
                        child: Text('Forget Password ?',
                        style:ralewayStyle.copyWith(
                                fontSize:15.0,
                                fontWeight: FontWeight.w600,
                                color: AppColors.mainBlueColor,  )
                                 ,)),
                    ),*/
                    SizedBox(height: height * 0.05,),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(16.0),
                        child: Ink(
                          padding: const EdgeInsets.symmetric(horizontal: 70.0 , vertical: 18.0),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(16.0),
                            color: AppColors.mainBlueColor,
                             ),
                             child: Text('Sign Up',
                              style:ralewayStyle.copyWith(
                                    fontSize:16.0,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.whiteColor,  )
                                     ,
                             ),
                        ),
                      ),
                    )


                  ],
                )
                
              ),
            ),)

          ],
        ),) ,
      
    );
  }
}