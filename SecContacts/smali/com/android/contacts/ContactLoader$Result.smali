.class public final Lcom/android/contacts/ContactLoader$Result;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactLoader$Result$Status;
    }
.end annotation


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private mAreWritableContact:Z

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChatOnData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomAlerttone:Ljava/lang/String;

.field private mCustomAlerttoneName:Ljava/lang/String;

.field private final mCustomRingtone:Ljava/lang/String;

.field private mCustomRingtoneName:Ljava/lang/String;

.field private mCustomVibrationName:Ljava/lang/String;

.field private mCustomVibrationUri:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private mInvitableAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mIsContainEmergencyGroup:Z

.field private mIsGooglePlus:Z

.field private final mIsSim:Z

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

.field private final mStatuses:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "requestedUri"
    .parameter "uri"
    .parameter "lookupUri"
    .parameter "directoryId"
    .parameter "lookupKey"
    .parameter "id"
    .parameter "nameRawContactId"
    .parameter "displayNameSource"
    .parameter "photoId"
    .parameter "photoUri"
    .parameter "displayName"
    .parameter "altDisplayName"
    .parameter "phoneticName"
    .parameter "starred"
    .parameter "presence"
    .parameter "sendToVoicemail"
    .parameter "customRingtone"
    .parameter "isUserProfile"
    .parameter "isSim"
    .parameter "customRingtoneName"
    .parameter "customVibrationName"
    .parameter "customVibrationUri"
    .parameter "customAlerttone"
    .parameter "customAlerttoneName"

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 250
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 251
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 252
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 253
    iput-wide p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 254
    iput-object p6, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 255
    iput-wide p7, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 258
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    .line 259
    iput-wide p9, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 260
    iput p11, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 261
    iput-wide p12, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 262
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 263
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 264
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 266
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 267
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 269
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 270
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 271
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 272
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    .line 274
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    .line 275
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    .line 276
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 277
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"
    .parameter "x13"
    .parameter "x14"
    .parameter "x15"
    .parameter "x16"
    .parameter "x17"
    .parameter "x18"
    .parameter "x19"
    .parameter "x20"
    .parameter "x21"
    .parameter "x22"
    .parameter "x23"
    .parameter "x24"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p28}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V
    .locals 5
    .parameter "requestedUri"
    .parameter "status"
    .parameter "exception"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 199
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 200
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 201
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 202
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 203
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 204
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 205
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 206
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 207
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 208
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    .line 209
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 210
    iput v2, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 211
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 212
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 216
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 217
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 218
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 219
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 220
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 222
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    .line 225
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    .line 226
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 227
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 228
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 229
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .parameter "requestedUri"
    .parameter "from"

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 284
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 285
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 286
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 287
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 288
    iget-wide v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 289
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 290
    iget-wide v0, p2, Lcom/android/contacts/ContactLoader$Result;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 291
    iget-wide v0, p2, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 292
    iget v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 293
    iget-wide v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 294
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 295
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 296
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 297
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 298
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 299
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 300
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 301
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 302
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    .line 303
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 305
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 306
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 307
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 308
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 309
    iget v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 311
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    .line 313
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 314
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 315
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 316
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 317
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    .line 318
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    .line 319
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    .line 320
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    .line 321
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mChatOnData:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mChatOnData:Ljava/util/HashMap;

    .line 322
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 323
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 324
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsGooglePlus:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsGooglePlus:Z

    .line 325
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    .line 326
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mAreWritableContact:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAreWritableContact:Z

    .line 327
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/ContactLoader$Result;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setIsGooglePlus(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/ContactLoader$Result;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/ContactLoader$Result;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactLoader$Result;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/ContactLoader$Result;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->addBlackListData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/ContactLoader$Result;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setAreWritableAccount(Z)V

    return-void
.end method

.method private addBlackListData(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    return-void
.end method

.method private static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    .locals 2
    .parameter "requestedUri"
    .parameter "exception"

    .prologue
    .line 232
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 3
    .parameter "requestedUri"

    .prologue
    .line 236
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private setAreWritableAccount(Z)V
    .locals 0
    .parameter "areWritable"

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mAreWritableContact:Z

    .line 364
    return-void
.end method

.method private setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "displayName"
    .parameter "directoryType"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "exportSupport"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 336
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 337
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 338
    iput-object p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 339
    iput p5, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 340
    return-void
.end method

.method private setIsGooglePlus(Z)V
    .locals 0
    .parameter "isGooglePlus"

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mIsGooglePlus:Z

    .line 354
    return-void
.end method

.method private setPhotoBinaryData([B)V
    .locals 0
    .parameter "photoBinaryData"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 344
    return-void
.end method


# virtual methods
.method public areWritable()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAreWritableContact:Z

    return v0
.end method

.method public createEntityDeltaList()Lcom/android/contacts/model/EntityDeltaList;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 577
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot extract content values from an aggregated contact"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 581
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 582
    .local v0, entity:Landroid/content/Entity;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 584
    .local v6, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz v6, :cond_2

    .line 585
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 586
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 587
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 588
    .local v2, pair:Landroid/content/Entity$NamedContentValues;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 589
    iget-object v7, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v1           #i:I
    .end local v2           #pair:Landroid/content/Entity$NamedContentValues;
    .end local v5           #size:I
    :cond_2
    iget-wide v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    if-eqz v7, :cond_3

    .line 597
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v3, photo:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v7, "data15"

    iget-object v8, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 600
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v3           #photo:Landroid/content/ContentValues;
    :cond_3
    return-object v4
.end method

.method public getCustomAlerttone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAlerttoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomRingtoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomVibrationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomVibrationUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    return v0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getGroupMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    return-wide v0
.end method

.method public getInvitableAccountTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    return v0
.end method

.method public getStatuses()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public getStreamItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isContainEmergencyGroup()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    return v0
.end method

.method public isDirectoryEntry()Z
    .locals 4

    .prologue
    .line 503
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGooglePlus()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsGooglePlus:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    return v0
.end method

.method public isSim()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    return v0
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
