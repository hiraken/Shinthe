//
//  _0120617ViewController.h
//  Shinthe
//
//  Created by 平松 健二郎 on 12/06/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "RemoteOutput.h"

@interface _0120617ViewController : UIViewController <UIAccelerometerDelegate>{
    RemoteOutput *remoteOutput;    
    IBOutlet UILabel *frequencyLabel;
    IBOutlet UISlider *bar;
    IBOutlet UIButton *c3;
    IBOutlet UIButton *c3s;
    IBOutlet UIButton *d3;
    IBOutlet UIButton *d3s;
    IBOutlet UIButton *e3;
    IBOutlet UIButton *f3;
    IBOutlet UIButton *f3s;
    IBOutlet UIButton *g3;
    IBOutlet UIButton *g3s;
    IBOutlet UIButton *a4;
    IBOutlet UIButton *a4s;
    IBOutlet UIButton *b4;
    IBOutlet UIButton *c4;
    float syuha;
    float percen;
    int cnt;
    int col;
    float onkai;
    int oct;
    IBOutlet UIButton *oct1;
    IBOutlet UIButton *oct2;
    IBOutlet UIButton *oct3;
    IBOutlet UIButton *oct4;
    IBOutlet UIButton *oct5;
    IBOutlet UIButton *oct6;
    IBOutlet UIButton *oct7;
    IBOutlet UIButton *oct8;
    IBOutlet UIButton *hanasu;
    
    IBOutlet UISwitch *sch;
    
    bool sw;
    
    
}

- (IBAction)slide:(id)sender;

-(IBAction)c3:(id)sender;
-(IBAction)c3s:(id)sender;
-(IBAction)d3:(id)sender;
-(IBAction)d3s:(id)sender;
-(IBAction)e3:(id)sender;
-(IBAction)f3:(id)sender;
-(IBAction)f3s:(id)sender;
-(IBAction)g3:(id)sender;
-(IBAction)g3s:(id)sender;
-(IBAction)a4:(id)sender;
-(IBAction)a4s:(id)sender;
-(IBAction)b4:(id)sender;
-(IBAction)c4:(id)sender;

-(IBAction)c3stop:(id)sender;
-(IBAction)c3sstop:(id)sender;
-(IBAction)d3stop:(id)sender;
-(IBAction)d3sstop:(id)sender;
-(IBAction)e3stop:(id)sender;
-(IBAction)f3stop:(id)sender;
-(IBAction)f3sstop:(id)sender;
-(IBAction)g3stop:(id)sender;
-(IBAction)g3sstop:(id)sender;
-(IBAction)a4stop:(id)sender;
-(IBAction)a4sstop:(id)sender;
-(IBAction)b4stop:(id)sender;
-(IBAction)c4stop:(id)sender;

-(IBAction)oct1:(id)sender;
-(IBAction)oct2:(id)sender;
-(IBAction)oct3:(id)sender;
-(IBAction)oct4:(id)sender;
-(IBAction)oct5:(id)sender;
-(IBAction)oct6:(id)sender;
-(IBAction)oct7:(id)sender;
-(IBAction)oct8:(id)sender;

-(IBAction)hanasu:(id)sender;


-(IBAction)hoge:(id)sender;

@end
