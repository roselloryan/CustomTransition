//
//  ViewController.m
//  CustomTransition


#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *topLeftImageView;
@property (weak, nonatomic) IBOutlet UIImageView *bottomLeftImageView;
@property (weak, nonatomic) IBOutlet UIImageView *topRightImageView;
@property (weak, nonatomic) IBOutlet UIImageView *bottomRightImageView;
@property (weak, nonatomic) IBOutlet UIImageView *topCenterImageView;
@property (weak, nonatomic) IBOutlet UIImageView *bottomCenterImageView;
@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;

@property (weak, nonatomic) IBOutlet UIButton *button;


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.topLeftImageView removeFromSuperview];
}

- (IBAction)buttonTapped:(UIButton *)sender {
    
    if (!self.topLeftImageView) {
        UIImageView *topLeftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(-self.view.frame.size.width/3, -self.view.frame.size.height * 2/5, self.view.frame.size.width/3, self.view.frame.size.height * 2/5)];
        topLeftImageView.image = [UIImage imageNamed:@"canvas85"];
        topLeftImageView.contentMode = UIViewContentModeTopLeft;
            topLeftImageView.clipsToBounds = YES;
        self.topLeftImageView = topLeftImageView;

        UIImageView *topCenterImageView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/3, -self.view.frame.size.height * 2/5, self.view.frame.size.width/3, self.view.frame.size.height * 2/5)];
        topCenterImageView.image = [UIImage imageNamed:@"canvas85"];
        topCenterImageView.contentMode = UIViewContentModeTop;
        topCenterImageView.clipsToBounds = YES;
        topCenterImageView.backgroundColor = [UIColor redColor];
        self.topCenterImageView = topCenterImageView;
    
        UIImageView *topRightImageView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width*1.3, -self.view.frame.size.height * 2/5, self.view.frame.size.width/3, self.view.frame.size.height * 2/5)];
        topRightImageView.image = [UIImage imageNamed:@"canvas85"];
        topRightImageView.contentMode = UIViewContentModeTopRight;
        topRightImageView.clipsToBounds = YES;
        self.topRightImageView = topRightImageView;
        
        UIImageView *leftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(-self.view.frame.size.width * 1.5, self.view.frame.size.height * 2/5, self.view.frame.size.width/2, self.view.frame.size.height * 1/5)];
        leftImageView.image = [UIImage imageNamed:@"canvas85"];
        leftImageView.contentMode = UIViewContentModeLeft;
        leftImageView.clipsToBounds = YES;
        self.leftImageView = leftImageView;
        
        UIImageView *rightImageView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width * 1.5, self.view.frame.size.height * 2/5, self.view.frame.size.width/2, self.view.frame.size.height * 1/5)];
        rightImageView.image = [UIImage imageNamed:@"canvas85"];
        rightImageView.contentMode = UIViewContentModeRight;
        rightImageView.clipsToBounds = YES;
        self.rightImageView = rightImageView;
        
        UIImageView *bottomLeftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(-self.view.frame.size.width/3, self.view.frame.size.height, self.view.frame.size.width/3, self.view.frame.size.height * 2/5)];
        bottomLeftImageView.image = [UIImage imageNamed:@"canvas85"];
        bottomLeftImageView.contentMode = UIViewContentModeBottomLeft;
        bottomLeftImageView.clipsToBounds = YES;
        self.bottomLeftImageView = bottomLeftImageView;
        
        UIImageView *bottomCenterImageView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/3, self.view.frame.size.height, self.view.frame.size.width/3, self.view.frame.size.height * 2/5)];
        bottomCenterImageView.image = [UIImage imageNamed:@"canvas85"];
        bottomCenterImageView.contentMode = UIViewContentModeBottom;
        bottomCenterImageView.clipsToBounds = YES;
        self.bottomCenterImageView = bottomCenterImageView;
        
        UIImageView *bottomRightImageView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width*1.3, self.view.frame.size.height, self.view.frame.size.width/3, self.view.frame.size.height * 2/5)];
        bottomRightImageView.image = [UIImage imageNamed:@"canvas85"];
        bottomRightImageView.contentMode = UIViewContentModeBottomRight;
        bottomRightImageView.clipsToBounds = YES;
        self.bottomRightImageView = bottomRightImageView;
        
        [self.view addSubview:self.topLeftImageView];
        [self.view addSubview:self.topCenterImageView];
        [self.view addSubview:self.topRightImageView];
        
        [self.view addSubview:self.bottomLeftImageView];
        [self.view addSubview:self.bottomCenterImageView];
        [self.view addSubview:self.bottomRightImageView];
        
        [self.view addSubview:self.leftImageView];
        [self.view addSubview:self.rightImageView];
        
    
        [UIImageView animateWithDuration:0.4 delay: 0 options: UIViewAnimationOptionCurveEaseOut animations:^{
        
            self.topLeftImageView.frame = CGRectMake(0, 0, self.topLeftImageView.frame.size.width, self.topLeftImageView.frame.size.height);
            
            self.topRightImageView.frame = CGRectMake((self.view.frame.size.width * 2/3), 0, self.topRightImageView.frame.size.width, self.topRightImageView.frame.size.height);
            
            self.bottomLeftImageView.frame = CGRectMake(0, self.view.frame.size.height * 3/5, self.bottomLeftImageView.frame.size.width, self.bottomLeftImageView.frame.size.height);
            
            self.bottomRightImageView.frame = CGRectMake(self.view.frame.size.width * 2/3, self.view.frame.size.height * 3/5, self.bottomRightImageView.frame.size.width, self.bottomRightImageView.frame.size.height);
            
            self.bottomCenterImageView.frame = CGRectMake(self.view.frame.size.width/3, self.view.frame.size.height * 3/5, self.bottomCenterImageView.frame.size.width, self.bottomCenterImageView.frame.size.height);
            
            self.topCenterImageView.frame = CGRectMake(self.view.frame.size.width/3, 0, self.topCenterImageView.frame.size.width, self.topCenterImageView.frame.size.height);
            
            self.leftImageView.frame = CGRectMake(0, self.view.frame.size.height * 2/5, self.leftImageView.frame.size.width, self.leftImageView.frame.size.height);
            
            self.rightImageView.frame = CGRectMake(self.view.frame.size.width/2 , self.view.frame.size.height * 2/5, self.rightImageView.frame.size.width, self.rightImageView.frame.size.height);
            
        } completion:^(BOOL finished) {
            
            [self.view bringSubviewToFront:self.button];
        }];
    }
    
    else {
        [UIImageView animateWithDuration:0.5 delay: 0 options: 0 animations:^{
            
            self.topLeftImageView.frame = CGRectMake(-self.view.frame.size.width/2, -self.view.frame.size.height/2, self.view.frame.size.width/2, self.view.frame.size.height/2);

            self.topCenterImageView.frame = CGRectMake(self.view.frame.size.width/3, -self.view.frame.size.height/2, self.view.frame.size.width/3, self.view.frame.size.height/2);
            
            self.topRightImageView.frame = CGRectMake(self.view.frame.size.width*1.5, -self.view.frame.size.height/2, self.view.frame.size.width/2, self.view.frame.size.height/2);
            
            self.bottomLeftImageView.frame = CGRectMake(-self.view.frame.size.width/2, self.view.frame.size.height, self.view.frame.size.width/2, self.view.frame.size.height/2);
            
            self.bottomCenterImageView.frame = CGRectMake(self.view.frame.size.width/3, self.view.frame.size.height, self.view.frame.size.width/3, self.view.frame.size.height/2);
            
            self.bottomRightImageView.frame = CGRectMake(self.view.frame.size.width*1.5, self.view.frame.size.height, self.view.frame.size.width/2, self.view.frame.size.height/2);
            
            self.leftImageView.frame = CGRectMake(-self.view.frame.size.width * 1.5, self.view.frame.size.height * 2/5, self.view.frame.size.width/2, self.view.frame.size.height * 1/5);
            
            self.rightImageView.frame = CGRectMake(self.view.frame.size.width * 1.5, self.view.frame.size.height * 2/5, self.view.frame.size.width/2, self.view.frame.size.height * 1/5);

            
        } completion:^(BOOL finished) {
          
            [self.view bringSubviewToFront:self.button];
            [self.topLeftImageView removeFromSuperview];
            [self.topCenterImageView removeFromSuperview];
            [self.topRightImageView removeFromSuperview];
            [self.bottomLeftImageView removeFromSuperview];
            [self.bottomRightImageView removeFromSuperview];
            [self.bottomCenterImageView removeFromSuperview];
            [self.leftImageView removeFromSuperview];
            [self.rightImageView removeFromSuperview];
        }];
    }
}



@end
