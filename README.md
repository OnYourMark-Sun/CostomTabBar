# CostomTabBar
自定义tabABar
1、创建RootViewController，后面创建几个继承的VC，将这几个VC添加到TabBarController中

2、添加Window.RootVC = UITabBarC

3、在RootViewController中隐藏原TabBar，以创建UIView代替TabBar位置的视图

4、在UIview上添加Button(至于布局样式根据需求来吧)，响应事件就是self.tabBarController.selectedIndex = button.tag
