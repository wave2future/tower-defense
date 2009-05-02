#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
{
	UIImageView *levelView;
	UIImageView *enemyView;
	UIImageView *turretView;
}
- (void)initViews;
- (void)startGame;
- (void)initLevel;
@end