.class public Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.super Landroid/app/ListActivity;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    }
.end annotation


# instance fields
.field private isUsingTwoPanel:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewsCount:I

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirectLaunch:Z

.field private mIsMultiWindowSupported:Z

.field protected mLookupUri:Landroid/net/Uri;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mNickNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:I

.field private mUnCheckedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWebEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNickNameEntries:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWebEntries:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    .line 640
    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1138
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/widget/TextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setMaxLines(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addLastSeparator()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_0
    return-void
.end method

.method private bindData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 20
    .parameter "data"

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->initData()V

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_1

    const v2, 0x104000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    .line 364
    .local v9, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    .line 365
    .local v11, entity:Landroid/content/Entity;
    invoke-virtual {v11}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    .line 366
    .local v13, entryValues:Landroid/content/ContentValues;
    const-string v2, "data_set"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 367
    .local v10, dataSet:Ljava/lang/String;
    const-string v2, "account_type"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, accountType:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 370
    .local v17, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 371
    .local v7, subEntryValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, mimeType:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 373
    .local v5, dataId:J
    invoke-virtual {v9, v8, v10}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v18

    .line 375
    .local v18, type:Lcom/android/contacts/model/AccountType;
    if-eqz v3, :cond_3

    .line 379
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v8}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->isSimAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    :cond_4
    invoke-virtual {v9, v8, v10, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 384
    .local v4, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v4, :cond_3

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    move-result-object v12

    .line 390
    .local v12, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    iget-object v2, v12, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v14, 0x1

    .line 391
    .local v14, hasData:Z
    :goto_2
    if-eqz v14, :cond_3

    .line 393
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 394
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v8}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindPhoneNumberData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/String;)V

    goto :goto_1

    .line 390
    .end local v14           #hasData:Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 395
    .restart local v14       #hasData:Z
    :cond_6
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 396
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindEmailData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto :goto_1

    .line 397
    :cond_7
    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 398
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindImData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto :goto_1

    .line 399
    :cond_8
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindOrgData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 401
    :cond_9
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 402
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindNickNameData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 403
    :cond_a
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 404
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindWebData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 405
    :cond_b
    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 406
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindSipData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 407
    :cond_c
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 408
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindPostalData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 409
    :cond_d
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 410
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindEventData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 411
    :cond_e
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindRelationData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 413
    :cond_f
    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindNoteData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 419
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v5           #dataId:J
    .end local v7           #subEntryValues:Landroid/content/ContentValues;
    .end local v8           #accountType:Ljava/lang/String;
    .end local v10           #dataSet:Ljava/lang/String;
    .end local v11           #entity:Landroid/content/Entity;
    .end local v12           #entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .end local v13           #entryValues:Landroid/content/ContentValues;
    .end local v14           #hasData:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v18           #type:Lcom/android/contacts/model/AccountType;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupFlattenedList()V

    .line 433
    new-instance v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/app/ListActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateSaveButtonStatus()V

    goto/16 :goto_0
.end method

.method private bindEmailData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 745
    const-string v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    const/4 v0, 0x2

    .line 756
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isCustomType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    :goto_1
    const-string v1, "_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->id:J

    .line 763
    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 764
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    return-void

    .line 752
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 759
    :cond_1
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private bindEventData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 816
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 817
    iget-object v1, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/contacts/util/DateUtils;->formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 826
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0
.end method

.method private bindImData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildImActions(Landroid/content/Context;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 771
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->id:J

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    return-void
.end method

.method private bindNickNameData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNickNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    return-void
.end method

.method private bindNoteData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 781
    const/16 v0, 0x3e8

    iput v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    return-void
.end method

.method private bindOrgData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 776
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    return-void
.end method

.method private bindPhoneNumberData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 684
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    const-string v1, "normalized_number"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 689
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    :cond_0
    :goto_0
    const-string v1, "ar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "he"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "iw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ur"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 707
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    :cond_2
    const-string v1, "data2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 722
    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 723
    const-string v1, "data3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    :goto_2
    const-string v2, "_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->id:J

    .line 737
    iput-object v1, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 738
    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    return-void

    .line 691
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 695
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 725
    :cond_5
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 726
    if-ne v1, v2, :cond_6

    .line 727
    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 729
    :cond_6
    const v1, 0x7f0d03f2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 732
    :cond_7
    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private bindPostalData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 804
    const/16 v0, 0xa

    iput v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    return-void
.end method

.method private bindRelationData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method

.method private bindSipData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 791
    const/4 v0, 0x1

    iput v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    return-void
.end method

.method private bindWebData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 786
    const/4 v0, 0x1

    iput v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    return-void
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1164
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-object v1

    .line 1167
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1168
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private buildImActions(Landroid/content/Context;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Landroid/content/ContentValues;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x5

    .line 831
    const-string v0, "vnd.android.cursor.item/email_v2"

    const-string v2, "mimetype"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 833
    if-nez v2, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "data1"

    :goto_1
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 842
    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 844
    if-eqz v2, :cond_3

    move v0, v1

    .line 846
    :goto_2
    if-ne v0, v1, :cond_0

    .line 847
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0

    .line 837
    :cond_2
    const-string v0, "data1"

    goto :goto_1

    .line 844
    :cond_3
    const-string v0, "data5"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 483
    .local v0, count:I
    if-lez v0, :cond_0

    .line 484
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 485
    .local v2, kind:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v2           #kind:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 491
    if-eqz v1, :cond_1

    .line 492
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 499
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 676
    :cond_0
    return-void
.end method

.method private isAllItemChecked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mTotalSize:I

    if-ne v0, v1, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1243
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private isCustomType(I)Z
    .locals 1
    .parameter "dataType"

    .prologue
    .line 679
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "entry"
    .parameter "data"

    .prologue
    .line 616
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    const-string v0, ""

    .line 620
    .local v0, attach:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 621
    const-string v0, " : "

    .line 625
    :goto_1
    if-eqz p1, :cond_0

    .line 626
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 627
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :goto_2
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 623
    :cond_2
    const-string v0, " "

    goto :goto_1

    .line 630
    :cond_3
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private performSaveAction()V
    .locals 8

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseSendData()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, data:Ljava/lang/String;
    iget v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 543
    const-string v4, "SelectContactInfoActivity"

    const-string v5, "Mode is not defined"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 548
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    .line 551
    return-void

    .line 522
    :pswitch_0
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    if-eqz v4, :cond_1

    .line 524
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 526
    .local v2, intentSendContact:Landroid/content/Intent;
    const-string v4, "sms_body"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 530
    .end local v2           #intentSendContact:Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 531
    .local v3, intentSendContactFromMMS:Landroid/content/Intent;
    const-string v4, "namecard_string"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 536
    .end local v3           #intentSendContactFromMMS:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, intentPrintContact:Landroid/content/Intent;
    const-string v4, "android.intent.extra.TITLE"

    const-string v5, "Contact"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v4, "android.intent.extra.SUBJECT"

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareData()V
    .locals 4

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CONTACT_URI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "CONTACT_URI"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 514
    return-void
.end method

.method private setLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 331
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 344
    .local v0, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textView"
    .parameter "maxLines"

    .prologue
    const/4 v0, 0x1

    .line 1153
    if-ne p2, v0, :cond_0

    .line 1154
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1155
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1161
    :goto_0
    return-void

    .line 1157
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1158
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNickNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mTotalSize:I

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNickNameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 459
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->addLastSeparator()V

    .line 470
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mTotalSize:I

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 293
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, displayName:Ljava/lang/CharSequence;
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 304
    const-string v2, "SelectContactInfoActivity"

    const-string v3, "Mode is not defined"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 311
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    .end local v1           #displayName:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 298
    .restart local v1       #displayName:Ljava/lang/CharSequence;
    :pswitch_0
    const v2, 0x7f0d0135

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 299
    goto :goto_0

    .line 301
    :pswitch_1
    const v2, 0x7f0d024e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSaveButtonStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1254
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mTotalSize:I

    if-ge v0, v1, :cond_3

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1257
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsMultiWindowSupported:Z

    .line 176
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_0

    .line 177
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 182
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "CONTACT_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    .line 183
    const-string v3, "direct_launch"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    .line 185
    const-string v3, "mode"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    .line 188
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isUsingTwoPanel:Z

    .line 190
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 192
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040150

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setContentView(I)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    const v3, 0x7f090122

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    .line 198
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    const v4, 0x7f090034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d006a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :cond_1
    const v3, 0x7f040055

    invoke-virtual {v0, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    .line 203
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0900f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 208
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_2

    .line 209
    const v3, 0x7f040162

    invoke-virtual {v0, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 210
    .local v2, marginView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 213
    .end local v2           #marginView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderViewsCount:I

    .line 215
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    .line 216
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    .line 218
    if-eqz p1, :cond_5

    .line 220
    const-string v3, "checkedInfoHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 221
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 222
    const-string v3, "checkedInfoHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    .line 225
    :cond_3
    const-string v3, "uncheckedInfoHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 226
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 227
    const-string v3, "uncheckedInfoHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    .line 230
    :cond_4
    const-string v3, "checkedAllItem"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v3, :cond_5

    .line 232
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 237
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->prepareData()V

    .line 238
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupTitle()V

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setLayout()V

    .line 240
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 261
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 263
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateSaveButtonStatus()V

    .line 266
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1173
    if-gez p3, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 1176
    if-nez p3, :cond_5

    .line 1180
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1183
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1184
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1189
    :goto_1
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1190
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 1194
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    .line 1229
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateSaveButtonStatus()V

    goto :goto_0

    .line 1186
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1198
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;

    .line 1199
    .local v0, viewCache:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderViewsCount:I

    sub-int/2addr p3, v1

    .line 1200
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1204
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1205
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1208
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1211
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isAllItemChecked()V

    .line 1224
    :goto_3
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1225
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    goto :goto_2

    .line 1213
    :cond_7
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1214
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1215
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1221
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isAllItemChecked()V

    goto :goto_3

    .line 1217
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1219
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 287
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 279
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    goto :goto_0

    .line 282
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->performSaveAction()V

    goto :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_0
        0x7f0903b5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "checkedInfoHash"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 249
    const-string v0, "uncheckedInfoHash"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const-string v0, "checkedAllItem"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    :cond_2
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setLayout()V

    .line 325
    :cond_0
    return-void
.end method

.method public parseSendData()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .local v0, data:Ljava/lang/StringBuilder;
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 558
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    if-nez v9, :cond_3

    .line 563
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    move-object v10, v9

    .line 611
    :cond_1
    :goto_1
    return-object v10

    :cond_2
    move-object v9, v10

    .line 563
    goto :goto_0

    .line 566
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 569
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 570
    .local v7, sortedMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 571
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 572
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 574
    :try_start_0
    iget-object v11, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .line 575
    .local v2, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 576
    .end local v2           #entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    :catch_0
    move-exception v1

    .line 578
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 582
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    .end local v7           #sortedMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 584
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 585
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;"
    const/4 v5, 0x0

    .line 587
    .local v5, position:I
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 588
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 589
    .local v8, viewEntry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #position:I
    .local v6, position:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v5, v6

    .line 590
    .end local v6           #position:I
    .restart local v5       #position:I
    goto :goto_3

    .line 592
    .end local v5           #position:I
    .restart local v6       #position:I
    :cond_5
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->getViewType()I

    move-result v9

    if-nez v9, :cond_6

    move-object v2, v8

    .line 593
    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .line 594
    .restart local v2       #entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V

    .end local v2           #entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    :cond_6
    move v5, v6

    .line 596
    .end local v6           #position:I
    .restart local v5       #position:I
    goto :goto_3

    .line 598
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;"
    .end local v5           #position:I
    .end local v8           #viewEntry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 600
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 601
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;"
    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 602
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 604
    .restart local v8       #viewEntry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->getViewType()I

    move-result v9

    if-nez v9, :cond_8

    move-object v2, v8

    .line 605
    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .line 606
    .restart local v2       #entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 611
    .end local v2           #entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;"
    .end local v8           #viewEntry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    :cond_9
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1
.end method
