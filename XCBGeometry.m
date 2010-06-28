/**
 * Étoilé ProjectManager - XCBGeometry.m
 *
 * Copyright (C) 2010 Christopher Armstrong <carmstrong@fastmail.com.au>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 **/
#import "XCBGeometry.h"

@implementation NSValue (XCBGeometry)
- (XCBPoint)xcbPointValue
{
	XCBPoint v;
	[self getValue: &v];
	return v;
}
+ (NSValue*)valueWithXCBPoint: (XCBPoint)pointValue
{
	return [self valueWithBytes: &pointValue objCType: @encode(XCBPoint)];
}
- (XCBSize)xcbSizeValue
{
	XCBSize v;
	[self getValue: &v];
	return v;
}
+ (NSValue*)valueWithXCBSize: (XCBSize)sizeValue
{
	return [self valueWithBytes: &sizeValue objCType: @encode(XCBSize)];
}
- (XCBRect)xcbRectValue
{
	XCBRect v;
	[self getValue: &v];
	return v;
}
+ (NSValue*)valueWithXCBRect: (XCBRect)rectValue
{
	return [self valueWithBytes: &rectValue objCType: @encode(XCBRect)];
}
@end