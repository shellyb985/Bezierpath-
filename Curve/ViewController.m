//
//  ViewController.m
//  Curve
//
//  Created by Apple on 08/02/18.
//  Copyright © 2018 spb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self drawCurvPath];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drawCurvPath {
    
    float maxWidth = self.view.frame.size.width - 60;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path moveToPoint:CGPointMake(0.0, 0.0)];
    [path addLineToPoint:CGPointMake(0.0, 180.0)];
    [path addArcWithCenter:CGPointMake(0.0, 190.0) radius:10 startAngle:((M_PI * 270)/180) endAngle:((M_PI * 90)/180) clockwise:true];
    [path addLineToPoint:CGPointMake(0.0, 230.0)];
    
    [path addQuadCurveToPoint:CGPointMake(10.0, 240.0) controlPoint:CGPointMake(0.0, 240.0)];

    [path addLineToPoint:CGPointMake(maxWidth-10, 240)];
    [path addQuadCurveToPoint:CGPointMake(maxWidth, 230.0) controlPoint:CGPointMake(maxWidth, 240.0)];

    [path addLineToPoint:CGPointMake(maxWidth, 200.0)];
    [path addArcWithCenter:CGPointMake(maxWidth, 190) radius:10 startAngle:((M_PI * 90)/180) endAngle:((M_PI * 270)/180) clockwise:true];
    [path addLineToPoint:CGPointMake(maxWidth, 0.0)];
    [path addLineToPoint:CGPointMake(0.0, 0.0)];

    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    
    layer.lineWidth = 0.5;
    layer.strokeColor = [UIColor clearColor].CGColor;
    layer.fillColor = [UIColor whiteColor].CGColor;
    
    layer.shadowOpacity = 1.0;
    layer.shadowColor = [UIColor lightGrayColor].CGColor;
    layer.shadowRadius = 2.0;
    layer.shadowOffset = CGSizeMake(0.0, 2.0);

    layer.path = path.CGPath;
    
    
    CALayer *layer = []
    
    [self.curveView.layer addSublayer:layer];

}

@end
