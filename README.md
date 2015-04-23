# SNUUID
IOS equipment identification, which still exists to delete the app.IOS UUID.

/******* 以下是中文 *******/



苹果公司为保护用户隐私权，ios6之后无法获取设备的udid，而采用uuid，然而每次uuid都不同。
为解决这个问题，因此我们采用keychain保存app第一次生成的uuid，保证每次的uuid都是一样的，
即使app被删除仍然相同。

使用方法:
    NSString *uuid = [SNUUID uuid];
