.class public Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.super Landroid/app/ListActivity;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    }
.end annotation


# instance fields
.field private isUsingTwoPanel:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedEmailIndex:I

.field private mCheckedNameIndex:I

.field private mCheckedNumberIndex:I

.field private mCheckedPhotoIndex:I

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

.field public mDoneUpdate:Z

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mFirstCheckedEmailIndex:I

.field private mFirstCheckedNameIndex:I

.field private mFirstCheckedNumberIndex:I

.field private mFirstCheckedPhotoIndex:I

.field private mIsEmailChanged:Z

.field private mIsFirstEmail:Z

.field private mIsFirstName:Z

.field private mIsFirstNumber:Z

.field private mIsFirstPhoto:Z

.field private mIsMultiWindowSupported:Z

.field private mIsNameChanged:Z

.field private mIsNumberChanged:Z

.field private mIsPhotoChanged:Z

.field protected mLookupUri:Landroid/net/Uri;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 152
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 106
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    .line 107
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    .line 108
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    .line 109
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    .line 110
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    .line 111
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    .line 112
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    .line 113
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    .line 115
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    .line 116
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    .line 117
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    .line 118
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    .line 120
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    .line 121
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    .line 122
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    .line 136
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mDoneUpdate:Z

    .line 534
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 659
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 153
    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    return p1
.end method

.method private addLastSeparator()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_0
    return-void
.end method

.method private bindData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 23
    .parameter "data"

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->initData()V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    .line 410
    .local v14, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    .line 411
    .local v16, entity:Landroid/content/Entity;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    .line 412
    .local v17, entryValues:Landroid/content/ContentValues;
    const-string v2, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 413
    .local v15, dataSet:Ljava/lang/String;
    const-string v2, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 414
    .local v9, accountType:Ljava/lang/String;
    const-string v2, "account_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 416
    .local v10, accountName:Ljava/lang/String;
    invoke-virtual {v14, v9, v15}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v22

    .line 418
    .local v22, type:Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 420
    .local v11, accountLabel:Ljava/lang/String;
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    move-object v10, v11

    .line 424
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity$NamedContentValues;

    .line 425
    .local v21, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 426
    .local v7, subEntryValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, mimeType:Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 429
    .local v5, dataId:J
    if-eqz v3, :cond_3

    .line 432
    invoke-virtual {v14, v9, v15, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 434
    .local v4, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v4, :cond_3

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    move-result-object v13

    .line 440
    .local v13, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v8, p0

    move-object v12, v7

    .line 441
    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 442
    :cond_4
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 443
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 444
    :cond_5
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getAccountIcon(Lcom/android/contacts/model/AccountType;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 446
    .local v20, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 447
    .end local v20           #icon:Landroid/graphics/drawable/Drawable;
    :cond_6
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getAccountIcon(Lcom/android/contacts/model/AccountType;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 449
    .restart local v20       #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 454
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v5           #dataId:J
    .end local v7           #subEntryValues:Landroid/content/ContentValues;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountLabel:Ljava/lang/String;
    .end local v13           #entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    .end local v15           #dataSet:Ljava/lang/String;
    .end local v16           #entity:Landroid/content/Entity;
    .end local v17           #entryValues:Landroid/content/ContentValues;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #icon:Landroid/graphics/drawable/Drawable;
    .end local v21           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v22           #type:Lcom/android/contacts/model/AccountType;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupFlattenedList()V

    .line 460
    new-instance v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Landroid/app/ListActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->updateCheckedIndex()V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 5
    .parameter "icon"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 814
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 815
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 818
    :cond_0
    const-string v3, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, typeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 822
    .local v0, dataType:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 823
    const/4 v0, 0x2

    .line 828
    :goto_0
    const/4 v2, 0x0

    .line 829
    .local v2, types:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 830
    const-string v3, "data3"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 835
    :goto_1
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->id:J

    .line 836
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    .line 837
    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 838
    iput-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 839
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 840
    const/4 v3, 0x3

    iput v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 842
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    return-void

    .line 825
    .end local v2           #types:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 832
    .restart local v2       #types:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 6
    .parameter "accountName"
    .parameter "entryValues"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    const/4 v5, 0x1

    .line 745
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 746
    iput-boolean v5, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 749
    :cond_0
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 751
    .local v1, rawContactId:J
    const-string v3, "data1"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 754
    :cond_1
    const v3, 0x104000e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 757
    :cond_2
    iput-wide v1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->id:J

    .line 758
    iput-object v0, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 759
    iput-object p1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 760
    iput-boolean v5, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 761
    iput v5, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 763
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    return-void
.end method

.method private bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 7
    .parameter "icon"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 769
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 770
    const/4 v5, 0x1

    iput-boolean v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 773
    :cond_0
    const-string v5, "data1"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, number:Ljava/lang/String;
    const-string v5, "normalized_number"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, phoneNumberE164:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 784
    :goto_0
    const-string v5, "data2"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 786
    .local v3, typeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 788
    .local v0, dataType:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 789
    const/4 v0, 0x2

    .line 794
    :goto_1
    const/4 v4, 0x0

    .line 795
    .local v4, types:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 796
    const-string v5, "data3"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 801
    :goto_2
    const-string v5, "_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->id:J

    .line 802
    const-string v5, "_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    .line 803
    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 804
    iput-object v4, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 805
    const-string v5, "data1"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 806
    const/4 v5, 0x2

    iput v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 808
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    return-void

    .line 780
    .end local v0           #dataType:I
    .end local v3           #typeString:Ljava/lang/String;
    .end local v4           #types:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 791
    .restart local v0       #dataType:I
    .restart local v3       #typeString:Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 798
    .restart local v4       #types:Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 6
    .parameter "accountType"
    .parameter "accountName"
    .parameter "accountLabel"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 712
    invoke-direct {p0, p4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 713
    iput-boolean v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 716
    :cond_0
    const/4 v0, 0x0

    .line 717
    .local v0, photo:Landroid/graphics/Bitmap;
    const-string v2, "data15"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 718
    .local v1, photoBiteArray:[B
    if-nez v1, :cond_1

    .line 740
    :goto_0
    return-void

    .line 723
    :cond_1
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 726
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 727
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 732
    :goto_1
    const-string v2, "_id"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->id:J

    .line 733
    iput-object v0, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    .line 734
    iput-object p2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 735
    iput-object p1, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 736
    iput-boolean v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 737
    iput v4, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 739
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :cond_2
    move-object p1, p3

    goto :goto_1
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1219
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-object v1

    .line 1222
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1223
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 484
    .local v0, count:I
    if-lez v0, :cond_0

    .line 485
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 486
    .local v2, kind:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v2           #kind:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 492
    if-eqz v1, :cond_1

    .line 493
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 500
    return-void
.end method

.method private getAccountIcon(Lcom/android/contacts/model/AccountType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "type"

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 514
    .end local p1
    :goto_0
    return-object v0

    .line 511
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/android/contacts/model/ExchangeAccountType;

    if-eqz v0, :cond_1

    .line 512
    check-cast p1, Lcom/android/contacts/model/ExchangeAccountType;

    .end local p1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/ExchangeAccountType;->getDisplaySmallIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 514
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 695
    :cond_0
    return-void
.end method

.method private initializeCheckedInformation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 390
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    .line 391
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    .line 392
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    .line 393
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    .line 394
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    .line 395
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    .line 396
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    .line 397
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    .line 398
    return-void
.end method

.method private isCustomType(I)Z
    .locals 1
    .parameter "dataType"

    .prologue
    .line 698
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultData(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "subEntryValues"

    .prologue
    const/4 v0, 0x1

    .line 702
    const-string v1, "is_super_primary"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultName(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "entryValues"

    .prologue
    const/4 v0, 0x1

    .line 706
    const-string v1, "name_verified"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performSaveAction()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 620
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 622
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v2, :cond_0

    .line 623
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 624
    .local v1, trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 630
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v2, :cond_1

    .line 631
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 632
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "name_verified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 639
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v2, :cond_2

    .line 640
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 641
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-wide v4, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 648
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v2, :cond_3

    .line 649
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 650
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-wide v4, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->finish()V

    .line 657
    return-void
.end method

.method private prepareData()V
    .locals 4

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    .line 529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 532
    return-void
.end method

.method private setLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 289
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 302
    .local v0, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 303
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private setupFlattenedList()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 476
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->addLastSeparator()V

    .line 478
    return-void
.end method

.method private setupTitle()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 269
    const v2, 0x7f0d02ba

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, displayName:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 272
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 276
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateCheckedIndex()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 318
    :try_start_0
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    if-eq v5, v7, :cond_0

    .line 319
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 321
    .local v3, checkedPhotoEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 323
    .end local v3           #checkedPhotoEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_0
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    if-eq v5, v7, :cond_1

    .line 324
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 326
    .local v1, checkedNameEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 328
    .end local v1           #checkedNameEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_1
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    if-eq v5, v7, :cond_2

    .line 329
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 331
    .local v2, checkedNumberEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 333
    .end local v2           #checkedNumberEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_2
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    if-eq v5, v7, :cond_3

    .line 334
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 336
    .local v0, checkedEmailEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0           #checkedEmailEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_3
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v4

    .line 341
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->initializeCheckedInformation()V

    goto :goto_0
.end method

.method private updateFlag(Z)V
    .locals 2
    .parameter "forceUpdate"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    .line 261
    .local v0, providerStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 262
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v1, v1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mDoneUpdate:Z

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->invalidateOptionsMenu()V

    .line 265
    return-void

    .line 262
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 386
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 387
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 158
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    .line 162
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsMultiWindowSupported:Z

    .line 165
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsMultiWindowSupported:Z

    if-eqz v4, :cond_0

    .line 166
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v4, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 169
    if-eqz p1, :cond_7

    .line 171
    const-string v4, "checkedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 172
    .local v0, checkedInfoArray:[I
    const-string v4, "isChangedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    .line 173
    .local v2, isChangedInfoArray:[Z
    const-string v4, "firstCheckedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 174
    .local v1, firstCheckedInfoArray:[I
    const-string v4, "isFirstInfo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    .line 176
    .local v3, isFirstInfo:[Z
    if-eqz v2, :cond_1

    .line 177
    aget-boolean v4, v2, v5

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    .line 178
    aget-boolean v4, v2, v6

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    .line 179
    aget-boolean v4, v2, v7

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    .line 180
    aget-boolean v4, v2, v8

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    .line 182
    :cond_1
    if-eqz v0, :cond_5

    .line 183
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v4, :cond_2

    .line 184
    aget v4, v0, v5

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    .line 185
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v4, :cond_3

    .line 186
    aget v4, v0, v6

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    .line 187
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v4, :cond_4

    .line 188
    aget v4, v0, v7

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    .line 189
    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v4, :cond_5

    .line 190
    aget v4, v0, v8

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    .line 193
    :cond_5
    if-eqz v3, :cond_6

    .line 194
    aget-boolean v4, v3, v5

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    .line 195
    aget-boolean v4, v3, v6

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    .line 196
    aget-boolean v4, v3, v7

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    .line 197
    aget-boolean v4, v3, v8

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    .line 200
    :cond_6
    if-eqz v1, :cond_7

    .line 201
    aget v4, v1, v5

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    .line 202
    aget v4, v1, v6

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    .line 203
    aget v4, v1, v7

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    .line 204
    aget v4, v1, v8

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    .line 208
    .end local v0           #checkedInfoArray:[I
    .end local v1           #firstCheckedInfoArray:[I
    .end local v2           #isChangedInfoArray:[Z
    .end local v3           #isFirstInfo:[Z
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    .line 210
    const v4, 0x7f090122

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmptyView:Landroid/view/View;

    .line 212
    const v4, 0x7f04015c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setContentView(I)V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->prepareData()V

    .line 216
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupTitle()V

    .line 217
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 353
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 355
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 356
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 357
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mDoneUpdate:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 358
    return v2

    .line 357
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 252
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 254
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1228
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    .line 1230
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 369
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 380
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 372
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->finish()V

    goto :goto_0

    .line 375
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->performSaveAction()V

    goto :goto_0

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_0
        0x7f0903b5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    .line 349
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProviderStatusChange()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->updateFlag(Z)V

    .line 258
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    .line 246
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->updateFlag(Z)V

    .line 248
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 222
    new-array v0, v9, [I

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    aput v4, v0, v5

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    aput v4, v0, v6

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    aput v4, v0, v7

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    aput v4, v0, v8

    .line 225
    .local v0, checkedInfoArray:[I
    new-array v2, v9, [Z

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    aput-boolean v4, v2, v5

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    aput-boolean v4, v2, v6

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    aput-boolean v4, v2, v7

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    aput-boolean v4, v2, v8

    .line 229
    .local v2, isChangedArray:[Z
    new-array v1, v9, [I

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    aput v4, v1, v5

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    aput v4, v1, v6

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    aput v4, v1, v7

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    aput v4, v1, v8

    .line 232
    .local v1, firstCheckedInfoArray:[I
    new-array v3, v9, [Z

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    aput-boolean v4, v3, v5

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    aput-boolean v4, v3, v6

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    aput-boolean v4, v3, v7

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    aput-boolean v4, v3, v8

    .line 235
    .local v3, isFirstInfo:[Z
    const-string v4, "checkedInfoArray"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 236
    const-string v4, "isChangedInfoArray"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 237
    const-string v4, "firstCheckedInfoArray"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 238
    const-string v4, "isFirstInfo"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 239
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 314
    :cond_0
    return-void
.end method
