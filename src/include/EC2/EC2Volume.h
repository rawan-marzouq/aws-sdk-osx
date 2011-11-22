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

#import "EC2VolumeAttachment.h"
#import "EC2Tag.h"



/**
 * Volume
 *
 * \ingroup EC2
 */

@interface EC2Volume:NSObject

{
    NSString       *volumeId;
    NSNumber       *size;
    NSString       *snapshotId;
    NSString       *availabilityZone;
    NSString       *state;
    NSDate         *createTime;
    NSMutableArray *attachments;
    NSMutableArray *tags;
}




/**
 * Default constructor for a new  object.  Callers should use the
 * property methods to initialize this object after creating it.
 */
-(id)init;

/**
 * The unique ID of this volume.
 */
@property (nonatomic, retain) NSString *volumeId;

/**
 * The size of this volume, in gigabytes.
 */
@property (nonatomic, retain) NSNumber *size;

/**
 * Optional snapshot from which this volume was created.
 */
@property (nonatomic, retain) NSString *snapshotId;

/**
 * Availability zone in which this volume was created.
 */
@property (nonatomic, retain) NSString *availabilityZone;

/**
 * State of this volume (e.g., creating, available).
 * <p>
 * <b>Constraints:</b><br/>
 * <b>Allowed Values: </b>creating, available, in-use, deleting, error
 */
@property (nonatomic, retain) NSString *state;

/**
 * Timestamp when volume creation was initiated.
 */
@property (nonatomic, retain) NSDate *createTime;

/**
 * Information on what this volume is attached to.
 */
@property (nonatomic, retain) NSMutableArray *attachments;

/**
 * A list of tags for the Volume.
 */
@property (nonatomic, retain) NSMutableArray *tags;

/**
 * Adds a single object to attachments.
 * This function will alloc and init attachments if not already done.
 */
-(void)addAttachment:(EC2VolumeAttachment *)attachmentObject;

/**
 * Adds a single object to tags.
 * This function will alloc and init tags if not already done.
 */
-(void)addTag:(EC2Tag *)tagObject;

/**
 * Returns a string representation of this object; useful for testing and
 * debugging.
 *
 * @return A string representation of this object.
 */
-(NSString *)description;


@end
