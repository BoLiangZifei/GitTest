//
//  ViewController.m
//  TestGit
//
//  Created by lxf on 17/2/7.
//  Copyright © 2017年 LXF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString * strokedImagepath=@"/Users/apl/Desktop/image/6D53778915C23627891AC0EDE85F640E.jpg";
    
    UIImage *imgFromUrl=[[UIImage alloc]initWithContentsOfFile:strokedImagepath];
    NSData *dataObj = UIImageJPEGRepresentation(imgFromUrl, 0.1);
    NSLog(@"字符串--%@",dataObj);
    Byte *testByte = (Byte *)[dataObj bytes];
//    for(int i=0;i<[dataObj length];i++)
//    {
////        printf("testByte = %d\n",testByte[i]);
//    }
//   
    NSString *encodedImageStr = [dataObj base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    NSLog(@"----%@",encodedImageStr);
    NSData *_decodedImageData   = [[NSData alloc] initWithBase64Encoding:encodedImageStr];
    UIImage *_decodedImage      = [UIImage imageWithData:_decodedImageData];
    
//        UIImage *image = [UIImage imageWithData: dataObj];

//    NSString *aString = [[NSString alloc] initWithData:dataObj encoding:NSUTF8StringEncoding];

//    NSData *adata = [[NSData alloc] initWithBytes:testByte length:10241024];
    UIImage *image = [UIImage imageWithData: dataObj];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0,0 , 800, 800)];
    [imageView setImage:_decodedImage];
    [self.view addSubview:imageView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
