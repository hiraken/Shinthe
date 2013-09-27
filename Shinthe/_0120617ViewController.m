//
//  _0120617ViewController.m
//  Shinthe
//
//  Created by 平松 健二郎 on 12/06/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "_0120617ViewController.h"

@interface _0120617ViewController ()

@end

@implementation _0120617ViewController
/*
- (void) handlePanGesture:(UIPanGestureRecognizer*) sender {  
    UIPanGestureRecognizer* pan = (UIPanGestureRecognizer*) sender;  
    //CGPoint location = [pan translationInView:self.view];
    //syuha = sqrt(pow(location.x , 2.0) + pow(location.y , 2.0));
    // NSLog(@"pan x=%f, y=%f", location.x, location.y);  
} 
*/
- (void)viewDidLoad {
    /*
    syuha = bar.value;
    */
    /*
    UIPanGestureRecognizer* panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];  
    [self.view addGestureRecognizer:panGesture];
     */
    
    
    
    /*
    // ダブルタップ  
    UITapGestureRecognizer* doubleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapGesture:)];  
    doubleTapGesture.numberOfTapsRequired = 2;  
    [self.view addGestureRecognizer:doubleTapGesture]; 
    
    */
    
    //UIImage *img = [UIImage imageNamed:@"blue.png"];
    /* 
     srand(time(nil));
     col = rand()%100;
     percen = (float)col;
     
     UIImageView *iv = [[UIImageView alloc] initWithImage:img];
     
     
     [self.view addSubview:iv];
     
     
     cnt = 3;
     */
   /*
    //加速度センサーを使う
    UIAccelerometer *accelerometer = [UIAccelerometer sharedAccelerometer];
    //更新(取得)頻度とデリゲートを設定する
    accelerometer.updateInterval = 1.0 / 50.0;
    accelerometer.delegate = self;
    */
    remoteOutput = [[RemoteOutput alloc]init];
    oct = 3;
    //sch.on = YES;
    sw = 1;
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
    // ボタンのサイズを指定する
    [oct3 setBackgroundImage:img forState:UIControlStateNormal];    /*
    [sch addTarget:self action:@selector(hoge:)
 forControlEvents:UIControlEventValueChanged];
    */
     /*
    [remoteOutput play];
    */
    
    [[c3 layer] setCornerRadius:10.0];
    [c3 setClipsToBounds:YES];  
    
    [[c3s layer] setCornerRadius:10.0];
    [c3s setClipsToBounds:YES];  

    [[d3 layer] setCornerRadius:10.0];
    [d3 setClipsToBounds:YES];  

    [[d3s layer] setCornerRadius:10.0];
    [d3s setClipsToBounds:YES];  

    [[e3 layer] setCornerRadius:10.0];
    [e3 setClipsToBounds:YES];  

    [[f3 layer] setCornerRadius:10.0];
    [f3 setClipsToBounds:YES];  

    [[f3s layer] setCornerRadius:10.0];
    [f3s setClipsToBounds:YES];  

    [[g3 layer] setCornerRadius:10.0];
    [g3 setClipsToBounds:YES];  
    
    [[g3s layer] setCornerRadius:10.0];
    [g3s setClipsToBounds:YES];  
    
    
    [[a4 layer] setCornerRadius:10.0];
    [a4 setClipsToBounds:YES];  

    [[a4s layer] setCornerRadius:10.0];
    [a4s setClipsToBounds:YES];  
    
    [[b4 layer] setCornerRadius:10.0];
    [b4 setClipsToBounds:YES]; 
    
    [[c4 layer] setCornerRadius:10.0];
    [c4 setClipsToBounds:YES]; 

}

-(IBAction)hoge:(id)sender{
    // ここに何かの処理を記述する
    // （引数の switch には呼び出し元のUISwitchオブジェクトが引き渡されてきます）

    
    if(sw != 1){
        [remoteOutput swre:sw];
        sw = 1;
    }
    else {
        [remoteOutput swre:sw];
        sw = 0;
    }
    
}
 
/*
 - (AVCaptureSession *)session {
 NSError *error = nil;
 AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
 AVCaptureDeviceInput *videoInput = [AVCaptureDeviceInput deviceInputWithDevice:captureDevice error:&error];
 AVCaptureMovieFileOutput *movieFileOutput = [[[AVCaptureMovieFileOutput alloc] init] autorelease];
 
 [captureDevice lockForConfiguration:&error];
 captureDevice.torchMode = AVCaptureTorchModeOn;	
 [captureDevice unlockForConfiguration];
 
 AVCaptureSession *captureSession_ = [[[AVCaptureSession alloc] init] autorelease];
 
 [captureSession_ beginConfiguration];
 if ([captureSession_ canAddInput:videoInput]) {
 [captureSession_ addInput:videoInput];
 }
 if ([captureSession_ canAddOutput:movieFileOutput]) {
 [captureSession_ addOutput:movieFileOutput];
 }
 captureSession_.sessionPreset = AVCaptureSessionPresetLow;
 [captureSession_ commitConfiguration];
 
 return captureSession_;
 }
 */

-(IBAction)c3:(id)sender{
    
    switch (oct) {
        case 1:
            onkai = 65.40639132514966;
            break;
        case 2:
            onkai = 130.8127826502993;
            break;
        case 3:
            onkai = 261.6255653005986;
            break;
        case 4:
            onkai = 523.2511306011972;
            break;
        case 5:
            onkai = 1046.5022612023945;
            break;
        case 6:
            onkai = 2093.004522404789;
            break;
        case 7:
            onkai = 4186.009044809578;
            break;
        case 8:
            onkai = 8372.018089619156;
            break;
        
    }
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];

}

-(IBAction)c3stop:(id)sender{
    [remoteOutput stop];    
}

-(IBAction)d3stop:(id)sender{
    [remoteOutput stop];    
}

-(IBAction)e3stop:(id)sender{
    [remoteOutput stop];    
}

-(IBAction)f3stop:(id)sender{
    [remoteOutput stop];    
}

-(IBAction)g3stop:(id)sender{
    [remoteOutput stop];    
}

-(IBAction)a4stop:(id)sender{
    [remoteOutput stop];    
}

-(IBAction)b4stop:(id)sender{
    [remoteOutput stop];    
}

-(IBAction)d3:(id)sender{
    switch (oct) {
        case 1:
            onkai = 73.41619197935188;
            break;
        case 2:
            onkai = 146.8323839587038;
            break;
        case 3:
            onkai = 293.6647679174076;
            break;
        case 4:
            onkai = 587.3295358348151;
            break;
        case 5:
            onkai = 1174.6590716696303;
            break;
        case 6:
            onkai = 2349.31814333926;
            break;
        case 7:
            onkai = 4698.63628667852;
            break;
        case 8:
            onkai = 9397.272573357044;
            break;
            
    }
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
        
}

-(IBAction)e3:(id)sender{
    switch (oct) {
        case 1:
            onkai = 82.4068892282175;
            break;
        case 2:
            onkai = 164.81377845643496;
            break;
        case 3:
            onkai = 329.6275569128699;
            break;
        case 4:
            onkai = 659.2551138257398;
            break;
        case 5:
            onkai = 1318.5102276514797;
            break;
        case 6:
            onkai = 2637.02045530296;
            break;
        case 7:
            onkai = 5274.04091060592;
            break;
        case 8:
            onkai = 10548.081821211836;
            break;
            
    }
    

    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}
-(IBAction)f3:(id)sender{
    switch (oct) {
        case 1:
            onkai = 87.30705785825097;
            break;
        case 2:
            onkai = 174.61411571650194;
            break;
        case 3:
            onkai = 349.2282314330039;
            break;
        case 4:
            onkai = 698.4564628660078;
            break;
        case 5:
            onkai = 1396.9129257320155;
            break;
        case 6:
            onkai = 2793.825851464031;
            break;
        case 7:
            onkai = 5587.651702928062;
            break;
        case 8:
            onkai = 11175.303405856126;
            break;
            
    }
    
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}
-(IBAction)g3:(id)sender{
    switch (oct) {
        case 1:
            onkai = 97.99885899543733;
            break;
        case 2:
            onkai = 195.99771799087463;
            break;
        case 3:
            onkai = 391.99543598174927;
            break;
        case 4:
            onkai = 783.9908719634985;
            break;
        case 5:
            onkai = 1567.981743926997;
            break;
        case 6:
            onkai = 3135.9634878539946;
            break;
        case 7:
            onkai = 6271.926975707989;
            break;
        case 8:
            onkai = 12543.853951415975;
            break;
            
    }
    

    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}
-(IBAction)a4:(id)sender{
    switch (oct) {
        case 1:
            onkai = 110;
            break;
        case 2:
            onkai = 220;
            break;
        case 3:
            onkai = 440;
            break;
        case 4:
            onkai = 880;
            break;
        case 5:
            onkai = 1760;
            break;
        case 6:
            onkai = 3520;
            break;
        case 7:
            onkai = 7040;
            break;
        case 8:
            onkai = 14080;
            break;
            
    }

    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}
-(IBAction)b4:(id)sender{
    switch (oct) {
        case 1:
            onkai = 123.47082531403103;
            break;
        case 2:
            onkai = 246.94165062806206;
            break;
        case 3:
            onkai = 493.8833012561241;
            break;
        case 4:
            onkai = 987.7666025122483;
            break;
        case 5:
            onkai = 1975.533205024496;
            break;
        case 6:
            onkai = 3951.066410048992;
            break;
        case 7:
            onkai = 7902.132820097988;
            break;
        case 8:
            onkai = 15804.265640195976;
            break;
            
    }
  
    
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}

-(IBAction)c3s:(id)sender
{
    switch (oct) {
        case 1:
            onkai = 69.29565774421802;
            break;
        case 2:
            onkai = 138.59131548843604;
            break;
        case 3:
            onkai = 277.1826309768721;
            break;
        case 4:
            onkai = 554.3652619537442;
            break;
        case 5:
            onkai = 1108.7305239074883;
            break;
        case 6:
            onkai = 2217.4610478149766;
            break;
        case 7:
            onkai = 4434.922095629953;
            break;
        case 8:
            onkai = 8869.844191259906;
            break;
            
    }

    
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}
-(IBAction)d3s:(id)sender{
    switch (oct) {
        case 1:
            onkai = 69.29565774421802;
            break;
        case 2:
            onkai = 155.56349186104046;
            break;
        case 3:
            onkai = 311.12698372208087;
            break;
        case 4:
            onkai = 622.2539674441618;
            break;
        case 5:
            onkai = 1244.5079348883237;
            break;
        case 6:
            onkai = 2489.0158697766474;
            break;
        case 7:
            onkai = 4978.031739553295;
            break;
        case 8:
            onkai = 9956.06347910659;
            break;
            
    }
    
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}
-(IBAction)f3s:(id)sender{
    switch (oct) {
        case 1:
            onkai = 92.4986056779086;
            break;
        case 2:
            onkai = 184.9972113558172;
            break;
        case 3:
            onkai = 369.9944227116344;
            break;
        case 4:
            onkai = 739.9888454232688;
            break;
        case 5:
            onkai = 1479.9776908465376;
            break;
        case 6:
            onkai = 2959.955381693075;
            break;
        case 7:
            onkai = 5919.91076338615;
            break;
        case 8:
            onkai = 11839.8215267723;
            break;
            
    }
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}
-(IBAction)g3s:(id)sender{
    switch (oct) {
        case 1:
            onkai = 103.82617439498628;
            break;
        case 2:
            onkai = 207.65234878997256;
            break;
        case 3:
            onkai = 415.3046975799451;
            break;
        case 4:
            onkai = 830.6093951598903;
            break;
        case 5:
            onkai = 1661.2187903197805;
            break;
        case 6:
            onkai = 3322.437580639561;
            break;
        case 7:
            onkai = 6644.875161279122;
            break;
        case 8:
            onkai = 13289.750322558246;
            break;
            
    }
    

    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
     }
-(IBAction)a4s:(id)sender{
    switch (oct) {
        case 1:
            onkai = 116.54094037952248;
            break;
        case 2:
            onkai = 233.08188075904496;
            break;
        case 3:
            onkai = 466.1637615180899;
            break;
        case 4:
            onkai = 932.3275230361799;
            break;
        case 5:
            onkai = 1864.6550460723597;
            break;
        case 6:
            onkai = 3729.3100921447194;
            break;
        case 7:
            onkai = 7458.620184289437;
            break;
        case 8:
            onkai = 14917.240368578874;
            break;
            
    }
    
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}

-(IBAction)c4:(id)sender{
    switch (oct) {
        case 1:
            onkai = 130.8127826502993;
            break;
        case 2:
            onkai = 261.6255653005986;
            break;
        case 3:
            onkai = 523.2511306011972;
            break;
        case 4:
            onkai = 1046.5022612023945;
            break;
        case 5:
            onkai = 2093.004522404789;
            break;
        case 6:
            onkai = 4186.009044809578;
            break;
        case 7:
            onkai = 8372.018089619156;
            break;
        case 8:
            onkai = 16744.036179238312;
            break;
            
    }
    
    
    float frequency = onkai;
    remoteOutput.frequency = frequency;
    [remoteOutput play];
}


-(IBAction)c3sstop:(id)sender{
    
    [remoteOutput stop];
}
-(IBAction)d3sstop:(id)sender{
    
    [remoteOutput stop];
}
-(IBAction)f3sstop:(id)sender{
        [remoteOutput stop];
}
-(IBAction)g3sstop:(id)sender{
        [remoteOutput stop];
}
-(IBAction)a4sstop:(id)sender{
    
    [remoteOutput stop];
}

-(IBAction)c4stop:(id)sender{
    
    [remoteOutput stop];
}

-(IBAction)oct1:(id)sender{
        UIImage *imgmae = [UIImage imageNamed:@"un.gif"];
    switch (oct) {
        case 2:
             // ボタンにする画像を生成する
            // ボタンのサイズを指定する
            [oct2 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 3:
              // ボタンにする画像を生成する
            // ボタンのサイズを指定する
            [oct3 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 4:
    
            // ボタンのサイズを指定する
            [oct4 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 5:

            // ボタンのサイズを指定する
            [oct5 setBackgroundImage:imgmae forState:UIControlStateNormal];            
        break;
        case 6:
    
            // ボタンのサイズを指定する
            [oct6 setBackgroundImage:imgmae forState:UIControlStateNormal];            
        break;
        case 7:
    
            // ボタンのサイズを指定する
            [oct7 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 8:
            // ボタンのサイズを指定する
            [oct8 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;    
    }
    
    

    
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
      // ボタンのサイズを指定する
    [oct1 setBackgroundImage:img forState:UIControlStateNormal];
    
    oct = 1;

}
-(IBAction)oct2:(id)sender{
    UIImage *imgmae = [UIImage imageNamed:@"un.gif"];    
    switch (oct) {
        case 1:
    
            // ボタンのサイズを指定する
            [oct1 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 3:
        
            // ボタンのサイズを指定する
            [oct3 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 4:
            
            // ボタンのサイズを指定する
            [oct4 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 5:
            
            // ボタンのサイズを指定する
            [oct5 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 6:
        
            // ボタンのサイズを指定する
            [oct6 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 7:
            
            // ボタンのサイズを指定する
            [oct7 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 8:
    
            // ボタンのサイズを指定する
            [oct8 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;    
    }
    
    
    
    
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
    // ボタンのサイズを指定する
    [oct2 setBackgroundImage:img forState:UIControlStateNormal];
    
    oct = 2;
    
}
-(IBAction)oct3:(id)sender{
    UIImage *imgmae = [UIImage imageNamed:@"un.gif"];
    switch (oct) {
        case 1:
            
            // ボタンのサイズを指定する
            [oct1 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 2:
            
            // ボタンのサイズを指定する
            [oct2 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 4:
        
            // ボタンのサイズを指定する
            [oct4 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 5:
            
            // ボタンのサイズを指定する
            [oct5 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 6:
        
            // ボタンのサイズを指定する
            [oct6 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 7:
        
            // ボタンのサイズを指定する
            [oct7 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 8:
        
            // ボタンのサイズを指定する
            [oct8 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;    
    }
    
    
    
    
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
    // ボタンのサイズを指定する
    [oct3 setBackgroundImage:img forState:UIControlStateNormal];
    
    oct = 3;
    
    
}
-(IBAction)oct4:(id)sender{
    UIImage *imgmae = [UIImage imageNamed:@"un.gif"];
    switch (oct) {
        case 1:
        
            // ボタンのサイズを指定する
            [oct1 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 2:
        
            // ボタンのサイズを指定する
            [oct2 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 3:
            
            // ボタンのサイズを指定する
            [oct3 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 5:
        
            // ボタンのサイズを指定する
            [oct5 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 6:
        
            // ボタンのサイズを指定する
            [oct6 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 7:
        
            // ボタンのサイズを指定する
            [oct7 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 8:
        
            // ボタンのサイズを指定する
            [oct8 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;    
    }
    
    
    
    
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
    // ボタンのサイズを指定する
    [oct4 setBackgroundImage:img forState:UIControlStateNormal];
    
    oct = 4;
    
}
-(IBAction)oct5:(id)sender{
    UIImage *imgmae = [UIImage imageNamed:@"un.gif"];
    switch (oct) {
        case 1:
        
            // ボタンのサイズを指定する
            [oct1 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 2:
    
            // ボタンのサイズを指定する
            [oct2 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 3:
        
            // ボタンのサイズを指定する
            [oct3 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 4:
            
            // ボタンのサイズを指定する
            [oct4 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 6:
        
            // ボタンのサイズを指定する
            [oct6 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 7:
    
            // ボタンのサイズを指定する
            [oct7 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 8:
    
            // ボタンのサイズを指定する
            [oct8 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;    
    }
    
    
    
    
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
    // ボタンのサイズを指定する
    [oct5 setBackgroundImage:img forState:UIControlStateNormal];
    
    oct = 5;
    
}
-(IBAction)oct6:(id)sender{
    UIImage *imgmae = [UIImage imageNamed:@"un.gif"];
    switch (oct) {
        case 1:
    
            // ボタンのサイズを指定する
            [oct1 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 2:
        
            // ボタンのサイズを指定する
            [oct2 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 3:
        
            // ボタンのサイズを指定する
            [oct3 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 4:
        
            // ボタンのサイズを指定する
            [oct4 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 5:
        
            // ボタンのサイズを指定する
            [oct5 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 7:
    
            // ボタンのサイズを指定する
            [oct7 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 8:
        
            // ボタンのサイズを指定する
            [oct8 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;    
    }
    
    
    
    
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
    // ボタンのサイズを指定する
    [oct6 setBackgroundImage:img forState:UIControlStateNormal];
    
    oct = 6;
}
    

-(IBAction)oct7:(id)sender{
    UIImage *imgmae = [UIImage imageNamed:@"un.gif"];
    switch (oct) {
        case 1:
        
            // ボタンのサイズを指定する
            [oct1 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 2:
        
            // ボタンのサイズを指定する
            [oct2 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 3:
    
            // ボタンのサイズを指定する
            [oct3 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 4:
        
            // ボタンのサイズを指定する
            [oct4 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 5:
        
            // ボタンのサイズを指定する
            [oct5 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 6:
            
            // ボタンのサイズを指定する
            [oct6 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 8:
            
            // ボタンのサイズを指定する
            [oct8 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;    
    }
    
    
    
    
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
    // ボタンのサイズを指定する
    [oct7 setBackgroundImage:img forState:UIControlStateNormal];
    
    oct = 7;
    
}
-(IBAction)oct8:(id)sender{
    UIImage *imgmae = [UIImage imageNamed:@"un.gif"];
    switch (oct) {
        case 2:
            
            // ボタンのサイズを指定する
            [oct2 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 3:
            
            // ボタンのサイズを指定する
            [oct3 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 4:
            
            // ボタンのサイズを指定する
            [oct4 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 5:
            
            // ボタンのサイズを指定する
            [oct5 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 6:
        
            // ボタンのサイズを指定する
            [oct6 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 7:
        
            // ボタンのサイズを指定する
            [oct7 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;
        case 1:
        
            // ボタンのサイズを指定する
            [oct1 setBackgroundImage:imgmae forState:UIControlStateNormal];            
            break;    
    }
    
    
    
    
    
    UIImage *img = [UIImage imageNamed:@"act.gif"];  // ボタンにする画像を生成する
    // ボタンのサイズを指定する
    [oct8 setBackgroundImage:img forState:UIControlStateNormal];
    
    oct = 8;
    
}
/*
- (void) handlePanGesture:(UIPanGestureRecognizer*) sender {  
    UIPanGestureRecognizer* pan = (UIPanGestureRecognizer*) sender;  
    CGPoint location = [pan translationInView:self.view];
    onkai = ((sqrt(pow(location.x , 2.0) + pow(location.y , 2.0)))/5) * onkai;
    [remoteOutput play];    
    // NSLog(@"pan x=%f, y=%f", location.x, location.y);  
} 

-(IBAction)hanasu:(id)sender{
    [remoteOutput stop];
}
 */
/*
 - (void) handleDoubleTapGesture:(UITapGestureRecognizer*)sender {  
 
 switch(cnt){
 case 1:
 syuha = 1.0;
 cnt = 2;
 break;
 case 2:
 syuha = 11.0;
 cnt = 3;
 break;
 case 3:
 syuha = 22.0;
 cnt = 4;
 break;
 case 4:
 syuha = 33.0;
 cnt = 5;
 break;
 case 5:
 syuha = 44.0;
 cnt = 1;
 break;
 
 
 
 }
 
 NSLog(@"double tap");  
 }  
 */
/*
- (IBAction)slide:(id)sender {
     int oc;
     oc = (int)((bar.value / 20) * oct); 
     oct = oc;
 }
*/


 
/*
//加速度センサーのy軸をノートナンバーにマッピング
- (void)accelerometer:(UIAccelerometer *)accelerometer 
        didAccelerate:(UIAcceleration *)acceleration{
    //y軸の値を2.0〜0.0の範囲にする
    float value = (acceleration.y * -1.0) + 1.0;
    if(value > 2.0)value = 2.0;
    if(value < 0.0)value = 0.0;
    
    //ノートナンバーを127〜40の範囲にする
    float note_number = (127.0 - 40) * value * 0.5;
    note_number += 40;
    
    if(0){
        //ノートナンバーを72〜84（523.3のドからオクターブ上のドまで）の範囲にする
        note_number = 12 * value * 0.5;
        note_number += 72;
        //ノートナンバーを整数にして音階にする
        note_number = floor(note_number + 0.5);
        //ノートナンバーから周波数を計算
    }
    /*
     self.captureSession = [self session];
     [captureSession startRunning];
     */
    
    
    //float frequency = pow(2, (note_number - 69) / 12) * syuha;
    //float frequency = onkai;
    //remoteOutput.frequency = frequency;
    
    //frequencyLabel.text = [NSString stringWithFormat:@"%.3f",frequency];
//}


- (void)dealloc{
    UIAccelerometer *accelerometer = [UIAccelerometer sharedAccelerometer];
    accelerometer.delegate = nil;
   // [remoteOutput release];
    //[super dealloc];
}

@end
