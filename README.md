objc-async
==========

Simple wrappers around GCD

1. Copy objc_async.h and .m do your project
2. Import "objc_async.h" in your file
3. Do this

```objective-c
[objc_async asyncTask:^{

	int = 0;
	while (i < 1000)
	{
		// Do some work
		i++;
	}
}];
```

Enyoy using async tasks with ease
