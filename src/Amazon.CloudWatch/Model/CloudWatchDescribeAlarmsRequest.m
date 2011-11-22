/*
 * Copyright 2010-2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "CloudWatchDescribeAlarmsRequest.h"


@implementation CloudWatchDescribeAlarmsRequest

@synthesize alarmNames;
@synthesize alarmNamePrefix;
@synthesize stateValue;
@synthesize actionPrefix;
@synthesize maxRecords;
@synthesize nextToken;


-(id)init
{
    if (self = [super init]) {
        alarmNames      = [[NSMutableArray alloc] initWithCapacity:1];
        alarmNamePrefix = nil;
        stateValue      = nil;
        actionPrefix    = nil;
        maxRecords      = nil;
        nextToken       = nil;
    }

    return self;
}


-(void)addAlarmName:(NSString *)alarmNameObject
{
    if (alarmNames == nil) {
        alarmNames = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [alarmNames addObject:alarmNameObject];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"AlarmNames: %@,", alarmNames] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"AlarmNamePrefix: %@,", alarmNamePrefix] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"StateValue: %@,", stateValue] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ActionPrefix: %@,", actionPrefix] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"MaxRecords: %@,", maxRecords] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"NextToken: %@,", nextToken] autorelease]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return [buffer autorelease];
}



-(void)dealloc
{
    [alarmNames release];
    [alarmNamePrefix release];
    [stateValue release];
    [actionPrefix release];
    [maxRecords release];
    [nextToken release];

    [super dealloc];
}


@end
