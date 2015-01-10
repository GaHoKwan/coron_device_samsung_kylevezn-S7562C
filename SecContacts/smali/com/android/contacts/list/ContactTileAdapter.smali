.class public Lcom/android/contacts/list/ContactTileAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileAdapter$2;,
        Lcom/android/contacts/list/ContactTileAdapter$Listener;,
        Lcom/android/contacts/list/ContactTileAdapter$ViewTypes;,
        Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;,
        Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChagingSplitRatioMode:Z

.field private mChangeViewType:Z

.field private mColumnCount:I

.field private mContactCursor:Landroid/database/Cursor;

.field private mContactLinkIndex:I

.field private mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private mContext:Landroid/content/Context;

.field private mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

.field private mDividerCount:I

.field private mDividerPosition:I

.field private mFrequentCount:I

.field private mHasPhoneNumberIndex:I

.field private mIdIndex:I

.field private mIsQuickContactEnabled:Z

.field private mIsUserProfileIndex:I

.field private mLastSelectedView:Lcom/android/contacts/list/ContactTileView;

.field private mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private mLookupIndex:I

.field private mNameIndex:I

.field private final mPaddingInPixels:I

.field private mPhoneNumberIndex:I

.field private mPhoneNumberLabelIndex:I

.field private mPhoneNumberTypeIndex:I

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPhotoUriIndex:I

.field private mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mSelectedFavoriteUri:Landroid/net/Uri;

.field private mSelectedView:Lcom/android/contacts/list/ContactTileView;

.field private mSelectionVisible:Z

.field private mStaredCount:I

.field private mStarredIndex:I

.field private mStatusIndex:I

.field private mTWJoinListView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "numCols"
    .parameter "displayType"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 100
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChangeViewType:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    .line 743
    new-instance v1, Lcom/android/contacts/list/ContactTileAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactTileAdapter$1;-><init>(Lcom/android/contacts/list/ContactTileAdapter;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

    .line 151
    iput-object p2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    .line 152
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 154
    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne p4, v1, :cond_0

    move p3, v0

    .end local p3
    :cond_0
    iput p3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    .line 155
    iput-object p4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .line 158
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I

    .line 161
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileAdapter;->bindColumnIndices()V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/ContactTileAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->isSelectedUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactTileAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ContactTileAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/ContactTileAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/ContactPhotoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method private bindColumnIndices()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    .line 233
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_0

    .line 234
    iput v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    .line 235
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    .line 236
    iput v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    .line 238
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    .line 239
    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    .line 240
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    .line 241
    iput v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mHasPhoneNumberIndex:I

    .line 242
    iput v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsUserProfileIndex:I

    .line 243
    iput v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactLinkIndex:I

    .line 261
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    .line 247
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    .line 250
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    .line 251
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    .line 252
    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    .line 253
    iput v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mHasPhoneNumberIndex:I

    .line 254
    iput v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsUserProfileIndex:I

    .line 255
    iput v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactLinkIndex:I

    .line 257
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberIndex:I

    .line 258
    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    .line 259
    iput v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    goto :goto_0
.end method

.method private createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    .locals 16
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 358
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move/from16 v0, p2

    if-gt v14, v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 433
    :goto_0
    return-object v2

    .line 359
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v7

    .line 361
    .local v7, mirroringEnabled:Z
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 363
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/ContactTileAdapter;->bindColumnIndices()V

    .line 367
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 368
    .local v4, id:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 369
    .local v11, photoUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, lookupKey:Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    invoke-direct {v2}, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;-><init>()V

    .line 372
    .local v2, contact:Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, name:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 375
    if-eqz v8, :cond_3

    .end local v8           #name:Ljava/lang/String;
    :goto_1
    iput-object v8, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    .line 379
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    .line 380
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mHasPhoneNumberIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->hasPhoneNumber:I

    .line 381
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mIsUserProfileIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->isUserProfile:I

    .line 382
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mContactLinkIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactLink:Ljava/lang/String;

    .line 384
    if-eqz v11, :cond_6

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :goto_3
    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    .line 385
    iput-object v6, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKey:Ljava/lang/String;

    .line 386
    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v14, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v14, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKeyUri:Landroid/net/Uri;

    .line 389
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v15, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v14, v15, :cond_9

    .line 394
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 395
    .local v10, phoneNumberType:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, phoneNumberCustomLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/contacts/list/ContactTileAdapter;->getAccountType(J)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, accountType:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v14

    if-lez v14, :cond_8

    const-string v14, "vnd.sec.contact.sim"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 400
    const/4 v14, 0x2

    if-ne v10, v14, :cond_7

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    invoke-static {v14, v10, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 410
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 375
    .end local v1           #accountType:Ljava/lang/String;
    .end local v9           #phoneNumberCustomLabel:Ljava/lang/String;
    .end local v10           #phoneNumberType:I
    .restart local v8       #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0d0127

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 377
    :cond_4
    if-eqz v8, :cond_5

    .end local v8           #name:Ljava/lang/String;
    :goto_5
    iput-object v8, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    goto/16 :goto_2

    .restart local v8       #name:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x104000e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 384
    .end local v8           #name:Ljava/lang/String;
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 404
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v9       #phoneNumberCustomLabel:Ljava/lang/String;
    .restart local v10       #phoneNumberType:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0d03f2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    goto :goto_4

    .line 407
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    invoke-static {v14, v10, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    goto :goto_4

    .line 413
    .end local v1           #accountType:Ljava/lang/String;
    .end local v9           #phoneNumberCustomLabel:Ljava/lang/String;
    .end local v10           #phoneNumberType:I
    :cond_9
    const/4 v3, 0x0

    .line 414
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 415
    .local v12, presence:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 416
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 419
    :cond_a
    iput-object v3, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    .line 421
    const/4 v13, 0x0

    .line 422
    .local v13, statusMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_b

    .line 423
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 427
    :cond_b
    if-nez v13, :cond_c

    if-eqz v12, :cond_c

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 430
    :cond_c
    iput-object v13, v2, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getDivider(I)Landroid/view/View;
    .locals 8
    .parameter "position"

    .prologue
    const v7, 0x7f0d00c4

    .line 614
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f04011f

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 615
    .local v1, dividerView:Landroid/view/View;
    const v4, 0x7f0901a7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 616
    .local v3, text:Landroid/widget/TextView;
    const v4, 0x7f0902a4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 618
    .local v0, bottomMarginView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v5, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v4, v5, :cond_5

    .line 619
    if-nez p1, :cond_3

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v4, :cond_3

    .line 620
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0084

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 622
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-eqz v4, :cond_2

    .line 623
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 633
    const v4, 0x7f0902a3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 634
    .local v2, separator:Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-eqz v4, :cond_4

    .line 635
    const v4, 0x7f0205a2

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 648
    .end local v2           #separator:Landroid/view/View;
    :cond_1
    :goto_1
    return-object v1

    .line 625
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 629
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 637
    .restart local v2       #separator:Landroid/view/View;
    :cond_4
    const v4, 0x7f0205a1

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 645
    .end local v2           #separator:Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v5, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0d00c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private getDividerPosition(Landroid/database/Cursor;)I
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v0, -0x1

    .line 303
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$2;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 311
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 313
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 330
    :goto_0
    :pswitch_1
    return v0

    .line 323
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLayoutResourceId(I)I
    .locals 4
    .parameter "viewType"

    .prologue
    const v0, 0x7f040062

    const v1, 0x7f04005e

    .line 652
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v2, v3, :cond_1

    .line 653
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 668
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 670
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    if-eqz v1, :cond_0

    const v0, 0x7f040063

    goto :goto_0

    .line 665
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v2, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v0, v2, :cond_2

    const v0, 0x7f04005f

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 668
    :pswitch_3
    const v0, 0x7f040064

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRowCount(I)I
    .locals 2
    .parameter "entryCount"

    .prologue
    .line 485
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSelectedUri(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableQuickContact(Z)V
    .locals 0
    .parameter "enableQuickContact"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 178
    return-void
.end method

.method public getAccountName(J)Ljava/lang/String;
    .locals 11
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 1083
    const/4 v6, 0x0

    .line 1084
    .local v6, accountName:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 1085
    .local v8, rawContactId:J
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const/4 v3, 0x1

    const-string v5, "contact_id"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "account_name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1089
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1090
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1092
    const-string v0, "account_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1094
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1096
    :cond_1
    return-object v6
.end method

.method public getAccountType(J)Ljava/lang/String;
    .locals 13
    .parameter "dataId"

    .prologue
    .line 1053
    const/4 v8, 0x0

    .line 1054
    .local v8, accountType:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 1056
    .local v11, rawContactId:J
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1058
    .local v1, URI_PHONE:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1061
    .local v9, cur1:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1062
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1065
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1068
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v11, v2

    if-lez v0, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "account_type"

    aput-object v5, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1072
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1073
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1074
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1076
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1079
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_3
    return-object v8
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 7
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 335
    move v0, p1

    .line 336
    .local v0, cursorPosition:I
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v6, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-ne v5, v4, :cond_2

    .line 337
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v6, :cond_0

    :goto_0
    add-int/2addr v4, v5

    if-ge p1, v4, :cond_1

    .line 338
    add-int/lit8 v0, p1, -0x1

    .line 347
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 348
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 349
    .local v1, id:J
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, lookupKey:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v4, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .end local v1           #id:J
    .end local v3           #lookupKey:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 337
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 340
    :cond_1
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    sub-int v0, p1, v4

    goto :goto_1

    .line 344
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getCount()I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 438
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v4

    .line 442
    :cond_1
    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$2;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 476
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized DisplayType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 445
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    goto :goto_0

    .line 447
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-ne v3, v5, :cond_4

    .line 448
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 450
    .local v2, totalCnt:I
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    add-int/2addr v3, v2

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    if-nez v6, :cond_3

    :goto_2
    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 452
    .end local v2           #totalCnt:I
    :cond_4
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    .line 453
    .local v1, starredRowCount:I
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    add-int/2addr v1, v3

    .line 455
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    .line 456
    .local v0, frequentRowCount:I
    if-nez v0, :cond_6

    :goto_4
    add-int/2addr v0, v4

    .line 458
    add-int v4, v1, v0

    goto :goto_0

    .end local v0           #frequentRowCount:I
    :cond_5
    move v3, v5

    .line 453
    goto :goto_3

    .restart local v0       #frequentRowCount:I
    :cond_6
    move v4, v5

    .line 456
    goto :goto_4

    .line 462
    .end local v0           #frequentRowCount:I
    .end local v1           #starredRowCount:I
    :pswitch_2
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    .line 465
    .restart local v1       #starredRowCount:I
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    sub-int v0, v3, v6

    .line 468
    .restart local v0       #frequentRowCount:I
    if-nez v0, :cond_7

    :goto_5
    add-int/2addr v0, v4

    .line 471
    add-int v4, v1, v0

    goto :goto_0

    :cond_7
    move v4, v5

    .line 468
    goto :goto_5

    .line 474
    .end local v0           #frequentRowCount:I
    .end local v1           #starredRowCount:I
    :pswitch_3
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    goto/16 :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 494
    new-instance v3, Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    .local v3, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v5

    .line 497
    .local v1, contactIndex:I
    sget-object v5, Lcom/android/contacts/list/ContactTileAdapter$2;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 555
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized DisplayType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 499
    :pswitch_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, p1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    :goto_0
    return-object v3

    .line 503
    :pswitch_1
    const/4 v0, 0x0

    .local v0, columnCounter:I
    :goto_1
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    add-int/lit8 v1, v1, 0x1

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 509
    .end local v0           #columnCounter:I
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-ne v5, v4, :cond_3

    .line 510
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v6, :cond_1

    :goto_2
    add-int/2addr v4, v5

    if-ge p1, v4, :cond_2

    .line 511
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    add-int/lit8 v5, p1, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 513
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    sub-int v5, p1, v5

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    :cond_3
    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge p1, v4, :cond_4

    .line 518
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    sub-int/2addr v1, v4

    .line 519
    const/4 v0, 0x0

    .line 520
    .restart local v0       #columnCounter:I
    :goto_3
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-eq v1, v4, :cond_0

    .line 521
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v1, v1, 0x1

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 525
    .end local v0           #columnCounter:I
    :cond_4
    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    rem-int/2addr v4, v6

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    :goto_4
    sub-int v2, v5, v4

    .line 526
    .local v2, emptyCnt:I
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    :goto_5
    sub-int v4, v1, v4

    sub-int v1, v4, v2

    .line 527
    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contactIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emptyCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v0, 0x0

    .restart local v0       #columnCounter:I
    :goto_6
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    .line 530
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v1, v1, 0x1

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 525
    .end local v0           #columnCounter:I
    .end local v2           #emptyCnt:I
    :cond_5
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    iget v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    rem-int/2addr v4, v6

    goto :goto_4

    .line 526
    .restart local v2       #emptyCnt:I
    :cond_6
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_5

    .line 537
    .end local v2           #emptyCnt:I
    :pswitch_3
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 538
    const/4 v0, 0x0

    .line 539
    .restart local v0       #columnCounter:I
    :goto_7
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-eq v1, v4, :cond_0

    .line 540
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v1, v1, 0x1

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 550
    .end local v0           #columnCounter:I
    :cond_7
    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    add-int v1, v4, v5

    .line 551
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 565
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 688
    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$2;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 728
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-eqz v3, :cond_3

    .line 691
    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-eqz v2, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-ge p1, v2, :cond_2

    move v0, v1

    .line 695
    goto :goto_0

    .line 696
    :cond_2
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 699
    goto :goto_0

    .line 702
    :cond_3
    if-nez p1, :cond_4

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    if-nez v1, :cond_0

    .line 705
    :cond_4
    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    if-ge p1, v1, :cond_5

    move v0, v2

    .line 706
    goto :goto_0

    .line 707
    :cond_5
    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v1, v3

    if-ne p1, v1, :cond_6

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    if-gtz v1, :cond_0

    :cond_6
    move v0, v2

    .line 710
    goto :goto_0

    .line 715
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 716
    const/4 v0, 0x3

    goto :goto_0

    .line 717
    :cond_7
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 720
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 724
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 726
    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getStaredCount()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    .line 581
    sget-object v6, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView(position) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v4

    .line 584
    .local v4, itemViewType:I
    if-ne v4, v5, :cond_0

    .line 586
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getDivider(I)Landroid/view/View;

    move-result-object v2

    .line 606
    :goto_0
    return-object v2

    .line 593
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .local v2, contactTileRowView:Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 600
    .local v1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    if-nez v2, :cond_1

    .line 602
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;

    .end local v2           #contactTileRowView:Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v6, v4}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V

    .line 605
    .restart local v2       #contactTileRowView:Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_2

    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isVoLTEEnabled()Z

    move-result v6

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;ZZ)V

    goto :goto_0

    .line 594
    .end local v1           #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    .end local v2           #contactTileRowView:Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    :catch_0
    move-exception v3

    .line 595
    .local v3, e:Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v6, v4}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V

    .restart local v2       #contactTileRowView:Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
    goto :goto_1

    .line 605
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v1       #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x4

    return v0
.end method

.method protected isChangingSplitRatioMode()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 576
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V
    .locals 3
    .parameter "v"
    .parameter "isActivated"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 202
    if-nez p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 206
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    if-eqz p2, :cond_3

    .line 208
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 213
    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 215
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 216
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected setChangingSplitRatioMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 734
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mChagingSplitRatioMode:Z

    .line 735
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 736
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0
    .parameter "columnCount"

    .prologue
    .line 169
    iput p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    .line 170
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 269
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 270
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    .line 271
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_1

    .line 272
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    .line 273
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    .line 275
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v0, :cond_2

    .line 276
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    .line 281
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    .line 282
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    if-lez v0, :cond_0

    .line 283
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    .line 285
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    if-lez v0, :cond_1

    .line 286
    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerCount:I

    .line 289
    :cond_1
    sget-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDividerPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStaredCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStaredCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrequentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mFrequentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 294
    return-void

    .line 278
    :cond_2
    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    goto :goto_0
.end method

.method public setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 0
    .parameter "displayType"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    .line 174
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .parameter "photoLoader"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 166
    return-void
.end method

.method public setSelectedUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 199
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z

    .line 186
    return-void
.end method

.method public setViewType(Z)V
    .locals 0
    .parameter "bList"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mTWJoinListView:Z

    .line 182
    return-void
.end method
