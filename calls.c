#include <stdio.h>

void
ignore_me(void)
{
	return;
}

/* Most of your changes will likely be in callee */
void
callee(void)
{
	int a = 2, b = 4;
	ignore_me();
	return;
}

void
caller(void)
{
	callee();
	return;
}
