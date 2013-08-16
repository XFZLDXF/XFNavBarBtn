自定义NavgationBar按钮
================================

iOS  上UINavigationController视图压栈形式，可以在当前视图无限制push许多视图，然而一些会觉得自带的push按钮不够美观，而且当上的上一个页面title很长的时候，那个返回按钮就很长,怎样定义一个自己返回按钮呢？像第三幅图片一样。。。

![图一](https://github.com/XFZLDXF/XFNavBarBtn/blob/master/XFNavBarBtn/QQ20130816-14.png)

![图二](https://github.com/XFZLDXF/XFNavBarBtn/blob/master/XFNavBarBtn/QQ20130816-16.png)

![图三](https://github.com/XFZLDXF/XFNavBarBtn/blob/master/XFNavBarBtn/QQ20130816-15.png)



######需要push的视图里面定义一个事件


    - (IBAction)pushVC:(id)sender {
    NavViewController *navVC = (NavViewController *)[self.storyboard     instantiateViewControllerWithIdentifier:@"NavViewController"];
    navVC.title = NSLocalizedString(@"设置", nil);
    [self.navigationController pushViewController:navVC animated:YES];
    } 
    
######替换返回按钮，定义自定义按钮
 
    - (void)viewDidLoad
    {
    [super viewDidLoad];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    
    [backBtn setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(doBack:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = backItem;
     
	// Do any additional setup after loading the view.
    }

    -(void)doBack:(id)sender
    {
    [self.navigationController popViewControllerAnimated:YES];
    }
    
    
    
