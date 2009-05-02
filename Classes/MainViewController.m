#import "MainViewController.h"
#import "InfoViewController.h"

@implementation MainViewController

- (id)init {
	if (self = [super init]) {
		self.title = @"Tower Defense";
	}
	return self;
}

- (void)loadView {
	NSLog(@"loadView");
	
	[self initViews];
	[self startGame];
}

- (void)initViews {
	NSLog(@"initViews");
	
	self.view = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,480)];
	
	levelView = nil;
	enemyView = nil;
	turretView = nil;
	
	UIImageView *bottomView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bottom.jpg"]];
	[self.view addSubview:bottomView];
	bottomView.center = CGPointMake(160,460);
	[bottomView release];
}

- (void)dealloc {
	if(levelView) [levelView release];
	if(enemyView) [enemyView release];
	if(turretView) [turretView release];
	[self.view release];
	[super dealloc];
}

- (void)startGame {
	NSLog(@"startGame");
	
	[self initLevel];
}

- (void)initLevel {
	NSLog(@"initLevel");
	
	if(levelView) [levelView release];
	levelView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"level-1.jpg"]];
	[self.view addSubview:levelView];
	
	if(enemyView) [enemyView release];
	enemyView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"enemy-1.png"]];
	[levelView addSubview:enemyView];
	enemyView.center = CGPointMake(70,70);
	
	if(turretView) [turretView release];
	turretView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"turret-1.png"]];
	[levelView addSubview:turretView];
	turretView.center = CGPointMake(90,110);
}

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
	NSLog(@"touchesBegan");
}

@end
